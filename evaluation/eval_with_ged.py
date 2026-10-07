"""
Evaluation script for comparing generated ArchiMate Exchange XML models
against expected ("golden") models.

Compares elements and relationships between an "*_expected.xml" and an
"*_actual.xml" file per test-model folder, and reports Precision, Recall,
F1 and a type-mismatch rate, plus a detailed diff log.
"""

import csv
import os
import sys
import time
from collections import Counter, defaultdict
from glob import glob

import xml.etree.ElementTree as ET

try:
    import networkx as nx
    _HAS_NETWORKX = True
except ImportError:
    _HAS_NETWORKX = False

SCOPED_MODELS = False  # True for scoped model evaluation, False for full model evaluation 

NS = {
    'arch': 'http://www.opengroup.org/xsd/archimate/3.0/',
    'xsi': 'http://www.w3.org/2001/XMLSchema-instance',
}

# ---------------------------------------------------------------------------
# ArchiMate 3.2 standard vocabulary (The Open Group, Tables 6/7/8 and 3)
# https://pubs.opengroup.org/architecture/archimate3-doc/ch-Business-Layer.html
# https://pubs.opengroup.org/architecture/archimate32-doc/ch-Application-Layer.html
# https://pubs.opengroup.org/architecture/archimate3-doc/ch-Technology-Layer.html
# https://pubs.opengroup.org/architecture/archimate3-doc/ch-Relationships-and-Relationship-Connectors.html
#
# Used to compute TYPE COVERAGE: of everything the standard allows in a given
# layer/category, how much of that vocabulary does the (generated) model
# actually use? This is a capability metric, independent of any one
# expected/golden model - it answers "how much of ArchiMate's modelling
# capability does my transformation exercise", not "did it get this test
# case right".
# ---------------------------------------------------------------------------

ARCHIMATE_LAYER_ELEMENTS = {
    'Business': {
        'BusinessActor', 'BusinessRole', 'BusinessCollaboration', 'BusinessInterface',
        'BusinessProcess', 'BusinessFunction', 'BusinessInteraction', 'BusinessEvent',
        'BusinessService', 'BusinessObject', 'Contract', 'Representation', 'Product',
    },
    'Application': {
        'ApplicationComponent', 'ApplicationCollaboration', 'ApplicationInterface',
        'ApplicationFunction', 'ApplicationInteraction', 'ApplicationProcess',
        'ApplicationEvent', 'ApplicationService', 'DataObject',
    },
    'Technology': {
        'Node', 'Device', 'SystemSoftware', 'TechnologyCollaboration', 'TechnologyInterface',
        'Path', 'CommunicationNetwork', 'TechnologyFunction', 'TechnologyProcess',
        'TechnologyInteraction', 'TechnologyEvent', 'TechnologyService', 'Artifact',
        # Physical extension elements (Section 10.5-10.7) - technically part of the
        # Technology Layer chapter, but model the physical world rather than IT.
        # Split out here so you can exclude them from "core IT" coverage if your
        # EDMM mapping never targets them - see NON_PHYSICAL_TECHNOLOGY below.
        'Equipment', 'Facility', 'DistributionNetwork', 'Material',
    },
}

# Convenience: the 13 "core IT" Technology types, i.e. Technology minus the
# 4 physical-world elements. EDMM (cloud/software deployment modeling) has no
# real counterpart for Equipment/Facility/DistributionNetwork/Material, so a
# transformation from EDMM will structurally never reach those four - counting
# them in the denominator makes coverage look worse than it meaningfully is.
NON_PHYSICAL_TECHNOLOGY = ARCHIMATE_LAYER_ELEMENTS['Technology'] - {
    'Equipment', 'Facility', 'DistributionNetwork', 'Material',
}

ARCHIMATE_RELATIONSHIP_CATEGORIES = {
    'Structural': {'Composition', 'Aggregation', 'Assignment', 'Realization'},
    'Dependency': {'Serving', 'Access', 'Influence', 'Association'},
    'Dynamic': {'Triggering', 'Flow'},
    'Other': {'Specialization'},
    # NB: Junction is explicitly a "Relationship Connector", not a relationship
    # (ArchiMate 3.2 spec, Section 5.5) - it has no type of its own to cover
    # and is intentionally excluded from this categorization.
}


def _canon(name):
    """Normalize a type name for lookup: no spaces/underscores, lowercase."""
    return name.replace(' ', '').replace('_', '').lower() if name else name


_TYPE_TO_LAYER = {_canon(t): layer for layer, types in ARCHIMATE_LAYER_ELEMENTS.items() for t in types}
_RELTYPE_TO_CATEGORY = {_canon(t): cat for cat, types in ARCHIMATE_RELATIONSHIP_CATEGORIES.items() for t in types}


# ---------------------------------------------------------------------------
# Parsing
# ---------------------------------------------------------------------------

def _local_type(raw_type):
    """Strip a namespace prefix from an xsi:type attribute value.

    ElementTree resolves element/attribute *names* against the namespace
    map, but NOT the text content of attribute values. An xsi:type value
    like "archimate:ApplicationComponent" stays a literal string with
    whatever prefix happens to be bound in that particular file. If the
    expected file and the generated file bind the ArchiMate namespace to
    different prefixes, every single element would be reported as a type
    mismatch even though the type is identical. Comparing only the local
    name after the last ':' avoids that false signal.
    """
    if raw_type is None:
        return None
    return raw_type.rsplit(':', 1)[-1]


def parse_archimate_file(filepath):
    """
    Parse an ArchiMate Exchange XML file.

    Returns:
        elements: dict {name: type} for every NAMED element
        relations: dict {(source_name, target_name): Counter({type: count})}
        unnamed_summary: Counter {type: count} of elements with no <name>
            (e.g. Junctions), which are reported separately - see note below.
    """
    tree = ET.parse(filepath)
    root = tree.getroot()

    # --- pass 1: elements -------------------------------------------------
    id_to_type = {}
    id_to_given_name = {}

    for el in root.findall('.//arch:elements/arch:element', NS):
        el_id = el.get('identifier')
        if el_id is None:
            print(f"  [WARN] {os.path.basename(filepath)}: element without 'identifier' skipped")
            continue

        el_type = _local_type(el.get(f"{{{NS['xsi']}}}type"))
        name_node = el.find('arch:name', NS)
        name = None
        if name_node is not None and name_node.text and name_node.text.strip():
            name = name_node.text.strip()

        id_to_type[el_id] = el_type
        if name is not None:
            if name in id_to_given_name.values():
                # Two distinct elements sharing a name can't be told apart by
                # the name-based matching this script relies on further down.
                print(f"  [WARN] {os.path.basename(filepath)}: duplicate element name '{name}' - "
                      f"these will be indistinguishable in the comparison")
            id_to_given_name[el_id] = name

    # --- pass 2: raw (id-based) relations -----------------------------------
    raw_relations = []
    for rel in root.findall('.//arch:relationships/arch:relationship', NS):
        source_id = rel.get('source')
        target_id = rel.get('target')
        rel_type = _local_type(rel.get(f"{{{NS['xsi']}}}type"))
        if source_id is None or target_id is None:
            print(f"  [WARN] {os.path.basename(filepath)}: relationship missing source/target skipped")
            continue
        raw_relations.append((source_id, target_id, rel_type))

    # --- pass 3: synthesize identities for unnamed elements ----------------
    # Junctions (and any other element without a <name>) get an
    # independently auto-generated identifier in every file, so id_to_name
    # fallback to the raw XML id (as the original script did) can NEVER
    # match between an expected file and a generated file - it silently
    # turns every junction into one false negative + one false positive.
    # Instead, identify an unnamed element by the set of named neighbours
    # it connects to (plus its type), which is stable across independently
    # generated files as long as both sides model the same structure.
    id_to_name = dict(id_to_given_name)
    unnamed_ids = [eid for eid in id_to_type if eid not in id_to_given_name]

    neighbor_ids = defaultdict(set)
    for source_id, target_id, _ in raw_relations:
        if source_id in unnamed_ids:
            neighbor_ids[source_id].add(target_id)
        if target_id in unnamed_ids:
            neighbor_ids[target_id].add(source_id)

    def resolve(other_id):
        return id_to_given_name.get(other_id, f"id:{other_id}")

    seen_signature_count = Counter()
    for eid in unnamed_ids:
        el_type = id_to_type[eid]
        neighbor_names = sorted(resolve(n) for n in neighbor_ids.get(eid, ()))
        signature = f"<{el_type}:{','.join(neighbor_names)}>"
        seen_signature_count[signature] += 1
        occurrence = seen_signature_count[signature]
        # de-duplicate identical signatures (e.g. two AndJunctions between
        # the exact same pair of named elements) rather than silently
        # merging them into one entry
        id_to_name[eid] = signature if occurrence == 1 else f"{signature}#{occurrence}"

    elements = {id_to_name[eid]: id_to_type[eid] for eid in id_to_type}
    unnamed_summary = Counter(id_to_type[eid] for eid in unnamed_ids)

    # --- build final name-keyed, multiplicity-aware relations dict --------
    relations = defaultdict(Counter)
    for source_id, target_id, rel_type in raw_relations:
        source_name = id_to_name.get(source_id, source_id)
        target_name = id_to_name.get(target_id, target_id)
        relations[(source_name, target_name)][rel_type] += 1

    return elements, dict(relations), unnamed_summary


# ---------------------------------------------------------------------------
# Comparison
# ---------------------------------------------------------------------------

def _prf(tp, fp_count, fn_count):
    precision = tp / (tp + fp_count) if (tp + fp_count) else 0.0
    recall = tp / (tp + fn_count) if (tp + fn_count) else 0.0
    f1 = (2 * precision * recall / (precision + recall)) if (precision + recall) else 0.0
    return precision, recall, f1


def compare_elements(expected, actual):
    expected_keys, actual_keys = set(expected), set(actual)
    tp_keys = expected_keys & actual_keys
    fp_keys = actual_keys - expected_keys
    fn_keys = expected_keys - actual_keys

    wrong_types = {k: (expected[k], actual[k]) for k in tp_keys if expected[k] != actual[k]}
    precision, recall, f1 = _prf(len(tp_keys), len(fp_keys), len(fn_keys))

    metrics = {
        'Total Expected': len(expected_keys), 'Total Actual': len(actual_keys),
        'Precision': precision, 'Recall': recall, 'F1-Score': f1,
    }
    logs = {
        'fn': {k: f"Type: {expected[k]}" for k in fn_keys},
        'fp': fp_keys,
        'wrong_types': wrong_types,
    }
    return metrics, logs


def compare_relations(expected, actual, expected_elements):
    """
    expected/actual: dict {(source, target): Counter({type: count})}

    Relations are compared as a multiset per (source, target) pair rather
    than a single dict entry per pair. The original script kept only the
    LAST relationship type seen for a given (source, target) pair, so a
    model where the same two elements are connected by e.g. both a Serving
    and an Access relation silently lost one of them - understating both
    'Total Expected'/'Total Actual' and miscounting matches.
    """
    all_pairs = set(expected) | set(actual)

    tp = 0
    fn_details = {}
    fp_list = []
    wrong_types = []
    total_expected = sum(sum(c.values()) for c in expected.values())
    total_actual = sum(sum(c.values()) for c in actual.values())

    for pair in all_pairs:
        exp_counter = expected.get(pair, Counter())
        act_counter = actual.get(pair, Counter())

        matched = exp_counter & act_counter  # same (pair, type), multiplicity-aware
        tp += sum(matched.values())

        remaining_exp = exp_counter - matched
        remaining_act = act_counter - matched

        exp_leftover = list(remaining_exp.elements())
        act_leftover = list(remaining_act.elements())

        # Pair up leftovers as "the relation exists, but with the wrong
        # type" as far as possible (this is what the original per-pair dict
        # was implicitly trying to express) - only the surplus beyond that
        # is a genuine missing/extra relation.
        n_wrong = min(len(exp_leftover), len(act_leftover))
        for i in range(n_wrong):
            wrong_types.append((pair, exp_leftover[i], act_leftover[i]))
        tp += n_wrong

        for exp_type in exp_leftover[n_wrong:]:
            source_name, target_name = pair
            source_type = expected_elements.get(source_name, "Unknown")
            target_type = expected_elements.get(target_name, "Unknown")
            fn_details[(pair, exp_type, len(fn_details))] = (
                f"Rel-Type: {exp_type} | Source: {source_type} | Target: {target_type}"
            )
        for act_type in act_leftover[n_wrong:]:
            fp_list.append((pair, act_type))

    fp_count = len(fp_list)
    fn_count = len(fn_details)
    precision, recall, f1 = _prf(tp, fp_count, fn_count)

    metrics = {
        'Total Expected': total_expected, 'Total Actual': total_actual,
        'Precision': precision, 'Recall': recall, 'F1-Score': f1, 'TP': tp,
    }
    logs = {'fn': fn_details, 'fp': fp_list, 'wrong_types': wrong_types}
    return metrics, logs


# ---------------------------------------------------------------------------
# Type coverage (capability metric, independent of expected/actual matching)
# ---------------------------------------------------------------------------

def compute_element_coverage(used_types, layer_definitions=ARCHIMATE_LAYER_ELEMENTS):
    """
    used_types: iterable of element type strings actually observed in a model
        (e.g. `elements.values()` from parse_archimate_file, or a set of
        types accumulated across many models).

    Returns (coverage, unclassified):
        coverage: {layer: {'used': [...], 'used_count': n, 'total': n,
                            'missing': [...], 'pct': float}}
        unclassified: set of observed types that aren't in ANY of the three
            layers (e.g. Motivation/Strategy elements, or a typo/unknown type)
    """
    used_by_layer = defaultdict(set)
    unclassified = set()
    for type_name in used_types:
        layer = _TYPE_TO_LAYER.get(_canon(type_name))
        if layer:
            used_by_layer[layer].add(type_name)
        else:
            unclassified.add(type_name)

    coverage = {}
    for layer, all_types in layer_definitions.items():
        used = used_by_layer.get(layer, set())
        coverage[layer] = {
            'used': sorted(used), 'used_count': len(used),
            'total': len(all_types), 'missing': sorted(all_types - used),
            'pct': (len(used) / len(all_types) * 100) if all_types else 0.0,
        }
    return coverage, unclassified


def compute_relation_coverage(used_types, category_definitions=ARCHIMATE_RELATIONSHIP_CATEGORIES):
    """used_types: iterable of relationship type strings actually observed."""
    used_by_cat = defaultdict(set)
    unclassified = set()
    for t in used_types:
        cat = _RELTYPE_TO_CATEGORY.get(_canon(t))
        if cat:
            used_by_cat[cat].add(t)
        else:
            unclassified.add(t)  # e.g. "Junction" ends up here - it's a connector, not a relationship

    coverage = {}
    for cat, all_types in category_definitions.items():
        used = used_by_cat.get(cat, set())
        coverage[cat] = {
            'used': sorted(used), 'used_count': len(used),
            'total': len(all_types), 'missing': sorted(all_types - used),
            'pct': (len(used) / len(all_types) * 100) if all_types else 0.0,
        }
    return coverage, unclassified


def print_type_coverage(title, coverage, unclassified):
    print(f"\n  [TYPE COVERAGE - {title}] (types used according to the standard vocabulary)")
    for group, stats in coverage.items():
        used_str = ', '.join(stats['used']) if stats['used'] else '-'
        print(f"    {group:12s}: {stats['used_count']}/{stats['total']} ({stats['pct']:5.1f}%)  used: {used_str}")
        if stats['missing']:
            print(f"      {'':12s}  missing: {', '.join(stats['missing'])}")
    if unclassified:
        print(f"    (unclassified: {', '.join(sorted(unclassified))})")


# ---------------------------------------------------------------------------
# Graph Edit Distance
#
# Elements are graph nodes, relations are directed edges (a MultiDiGraph,
# since - as established above - two elements can be connected by more than
# one relation type). GED is the minimum-cost sequence of node/edge
# substitutions, deletions, and insertions that turns the ACTUAL (generated)
# graph into the EXPECTED (golden) graph (Sanfeliu & Fu, 1983) - i.e. "what
# does the transformation still have to fix to reach the correct output",
# not the other way around. This implementation uses networkx's exact
# algorithm (Abu-Aisheh et al., 2015).
#
# Node correspondence is anchored on element NAME, matching the identity
# model the rest of this script already uses (see parse_archimate_file):
# substituting a node for one with a DIFFERENT name is priced at 2.0 - more
# than deleting and re-inserting it (1.0 + 1.0) - so the optimal edit path
# never does that. Concretely this means: same name & type -> free; same
# name, different type -> a "wrong type" substitution (cost 0.5, cheaper
# than delete+insert, matching the [TYPE MISMATCH] semantics above); different
# name -> always a delete+insert. This keeps GED numerically consistent with
# the Precision/Recall/F1 figures instead of asking the solver to search for
# some other, possibly meaningless, cross-identity correspondence.
#
# Edges have no independent identity beyond their (source, target) pair, so
# their substitution cost is purely type-based.
# ---------------------------------------------------------------------------

def build_graph(elements, relations):
    """elements: {name: type}; relations: {(source, target): Counter({type: count})}."""
    G = nx.MultiDiGraph()
    for name, type_name in elements.items():
        G.add_node(name, type=type_name, name=name)
    for (source, target), type_counts in relations.items():
        for rel_type, count in type_counts.items():
            for _ in range(count):
                G.add_edge(source, target, type=rel_type)
    return G


def _ged_node_subst_cost(n1, n2):
    if n1.get('name') == n2.get('name'):
        return 0.0 if n1.get('type') == n2.get('type') else 0.5
    return 2.0  # >= node_del_cost + node_ins_cost: never cheaper than delete+insert


def _ged_edge_subst_cost(e1, e2):
    return 0.0 if e1.get('type') == e2.get('type') else 1.0


def compute_graph_edit_distance(exp_elements, exp_relations, act_elements, act_relations, timeout=30):
    """
    Returns None if networkx isn't installed. Otherwise a dict with:
        'ged': raw edit cost (float)
        'normalized_ged': ged / max_possible_cost, in [0, 1] - the
            Riesen & Bunke convention, where max_possible_cost is the cost
            of deleting everything in the actual graph and inserting
            everything in the expected graph from scratch (i.e. 0 shared
            structure at all)
        'exact': False if the search hit `timeout` before converging (only
            realistically possible on unusually large graphs - see below)
        'breakdown': counts of each edit operation type
        'edit_script': human-readable list of the non-trivial operations,
            phrased as "what to do to the actual/generated model to reach
            the expected/golden model" (delete what's extra, insert what's
            missing, substitute wrong types with the correct one)
    """
    if not _HAS_NETWORKX:
        return None

    G_exp = build_graph(exp_elements, exp_relations)
    G_act = build_graph(act_elements, act_relations)

    # G_act is the SOURCE and G_exp is the TARGET of the edit path, so every
    # operation reads as "do this to the actual model to arrive at the
    # expected one". The total cost is unchanged either way (the cost
    # functions above are symmetric), only the insert/delete/substitution
    # labelling and direction flips.
    start = time.time()
    best = None
    for node_edit, edge_edit, cost in nx.optimize_edit_paths(
        G_act, G_exp,
        node_subst_cost=_ged_node_subst_cost, node_del_cost=lambda n: 1.0, node_ins_cost=lambda n: 1.0,
        edge_subst_cost=_ged_edge_subst_cost, edge_del_cost=lambda e: 1.0, edge_ins_cost=lambda e: 1.0,
        timeout=timeout,
    ):
        best = (node_edit, edge_edit, cost)
    exact = (time.time() - start) < timeout
    node_edit, edge_edit, ged = best

    node_subst = node_del = node_ins = 0
    edit_script = []
    for u, v in node_edit:
        # u is a node from G_act (or None), v is the corresponding node from
        # G_exp (or None)
        if u is not None and v is not None:
            if G_act.nodes[u]['type'] != G_exp.nodes[v]['type']:
                node_subst += 1
                edit_script.append(f"SUBSTITUTE element '{u}': {G_act.nodes[u]['type']} -> {G_exp.nodes[v]['type']}")
        elif u is not None:
            node_del += 1
            edit_script.append(f"DELETE element '{u}' ({G_act.nodes[u]['type']})")
        else:
            node_ins += 1
            edit_script.append(f"INSERT element '{v}' ({G_exp.nodes[v]['type']})")

    edge_subst = edge_del = edge_ins = 0
    for e1, e2 in edge_edit:
        # e1 is an edge from G_act (or None), e2 is the corresponding edge
        # from G_exp (or None)
        if e1 is not None and e2 is not None:
            t1, t2 = G_act.edges[e1]['type'], G_exp.edges[e2]['type']
            if t1 != t2:
                edge_subst += 1
                edit_script.append(f"SUBSTITUTE relation '{e1[0]}' -> '{e1[1]}': {t1} -> {t2}")
        elif e1 is not None:
            edge_del += 1
            edit_script.append(f"DELETE relation '{e1[0]}' -> '{e1[1]}' [{G_act.edges[e1]['type']}]")
        else:
            edge_ins += 1
            edit_script.append(f"INSERT relation '{e2[0]}' -> '{e2[1]}' [{G_exp.edges[e2]['type']}]")

    # max_cost = (G_exp.number_of_nodes() + G_exp.number_of_edges()
    #             + G_act.number_of_nodes() + G_act.number_of_edges())
    max_cost = G_exp.number_of_nodes() + G_exp.number_of_edges()

    return {
        'ged': ged,
        'normalized_ged': 1 - (ged / max_cost) if max_cost else 0.0,
        'exact': exact,
        'breakdown': {
            'node_substitutions': node_subst, 'node_deletions': node_del, 'node_insertions': node_ins,
            'edge_substitutions': edge_subst, 'edge_deletions': edge_del, 'edge_insertions': edge_ins,
        },
        'edit_script': edit_script,
    }


def print_ged(ged_result):
    if ged_result is None:
        print("\n  [GRAPH EDIT DISTANCE] networkx not installed - skipped "
              "(pip install networkx --break-system-packages)")
        return
    b = ged_result['breakdown']
    exact_note = "" if ged_result['exact'] else "  [WARN: timeout - this is an upper bound, not exact]"
    print(f"\n  [GRAPH EDIT DISTANCE] GED = {ged_result['ged']:.1f}   "
          f"normalized = {ged_result['normalized_ged']:.4f}{exact_note}")
    print(f"    Elements : {b['node_substitutions']} substituted, {b['node_deletions']} deleted, "
          f"{b['node_insertions']} inserted")
    print(f"    Relations: {b['edge_substitutions']} substituted, {b['edge_deletions']} deleted, "
          f"{b['edge_insertions']} inserted")
    if ged_result['edit_script']:
        print("    Edit script:")
        for op in ged_result['edit_script']:
            print(f"      {op}")


# ---------------------------------------------------------------------------
# Reporting
# ---------------------------------------------------------------------------

def print_results(title, metrics, logs, is_relation):
    print(f"\n--- {title} ---")
    print(f"Statistics: {metrics['Total Expected']} expected, {metrics['Total Actual']} generated")
    print(f"Precision: {metrics['Precision']:.4f}")
    print(f"Recall   : {metrics['Recall']:.4f}")
    print(f"F1-Score : {metrics['F1-Score']:.4f}")

    if logs['fn']:
        print("\n  [MISSING] Expected, but NOT generated:")
        if is_relation:
            for (pair, rel_type, _), detail in sorted(logs['fn'].items(), key=lambda x: str(x[0])):
                print(f"    - '{pair[0]}' -> '{pair[1]}' [{rel_type}] ({detail})")
        else:
            for item, detail in sorted(logs['fn'].items()):
                print(f"    - '{item}' ({detail})")

    if logs['fp']:
        print("\n  [UNEXPECTED] Generated, but NOT expected:")
        if is_relation:
            for pair, rel_type in sorted(logs['fp'], key=lambda x: str(x)):
                print(f"    + '{pair[0]}' -> '{pair[1]}' [{rel_type}]")
        else:
            for item in sorted(logs['fp']):
                print(f"    + '{item}'")

    if logs['wrong_types']:
        print("\n  [TYPE MISMATCH]:")
        if is_relation:
            for pair, exp_type, act_type in logs['wrong_types']:
                print(f"    ~ '{pair[0]}' -> '{pair[1]}' -> Expected: {exp_type}, Generated: {act_type}")
        else:
            for item, (exp_type, act_type) in logs['wrong_types'].items():
                print(f"    ~ '{item}' -> Expected: {exp_type}, Generated: {act_type}")


def print_unnamed_summary(label, exp_unnamed, act_unnamed):
    if not exp_unnamed and not act_unnamed:
        return
    print("\n  [UNNAMED ELEMENTS] (e.g. junctions - matched via neighbourhood, not identity):")
    types = set(exp_unnamed) | set(act_unnamed)
    for t in sorted(types):
        print(f"    {t}: expected={exp_unnamed.get(t, 0)}, generated={act_unnamed.get(t, 0)}")


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main(base_directory, csv_output=None):
    if not os.path.exists(base_directory):
        print(f"Error: The directory '{base_directory}' was not found.")
        return

    subfolders = sorted(
        f.path for f in os.scandir(base_directory)
        if f.is_dir() and not f.name.startswith('.') and f.name != '__pycache__'
    )
    if not subfolders:
        print(f"No subfolders found in directory '{base_directory}'.")
        return

    # accumulators for an aggregate (micro-averaged) summary across all models
    agg = {
        'elements': {'tp': 0, 'fp': 0, 'fn': 0},
        'relations': {'tp': 0, 'fp': 0, 'fn': 0},
    }
    csv_rows = []
    all_actual_element_types = set()
    all_expected_element_types = set()
    all_actual_relation_types = set()
    all_expected_relation_types = set()
    all_ged_values = []
    all_normalized_ged_values = []

    for folder in subfolders:
        model_name = os.path.basename(folder)
        print(f"\n{'=' * 70}\nEvaluation for model folder: {model_name}\n{'=' * 70}")

        if SCOPED_MODELS:
            expected_files = sorted(glob(os.path.join(folder, '*_expected-wbl.xml')))
            actual_files = sorted(glob(os.path.join(folder, '*_actual.xml')))
        else:
            expected_files = sorted(glob(os.path.join(folder, '*_expected.xml')))
            actual_files = sorted(glob(os.path.join(folder, '*_actual.xml')))

        if not expected_files or not actual_files:
            print(f"Skipping {model_name}: '*_expected-wbl.xml' or '*_actual.xml' is missing.")
            continue
        if len(expected_files) > 1 or len(actual_files) > 1:
            print(f"  [WARN] Multiple candidates found, using the first of each (alphabetical):")
            print(f"         expected: {expected_files}")
            print(f"         actual:   {actual_files}")

        exp_elements, exp_relations, exp_unnamed = parse_archimate_file(expected_files[0])
        act_elements, act_relations, act_unnamed = parse_archimate_file(actual_files[0])

        elem_metrics, elem_logs = compare_elements(exp_elements, act_elements)
        rel_metrics, rel_logs = compare_relations(exp_relations, act_relations, exp_elements)

        print_results("ELEMENTS", elem_metrics, elem_logs, is_relation=False)
        print_unnamed_summary("ELEMENTS", exp_unnamed, act_unnamed)
        elem_coverage, elem_unclassified = compute_element_coverage(act_elements.values())
        print_type_coverage("ELEMENTS, generated model", elem_coverage, elem_unclassified)

        print_results("RELATIONS", rel_metrics, rel_logs, is_relation=True)
        act_rel_types_this_model = {t for c in act_relations.values() for t in c}
        rel_coverage, rel_unclassified = compute_relation_coverage(act_rel_types_this_model)
        print_type_coverage("RELATIONS, generated model", rel_coverage, rel_unclassified)

        ged_result = compute_graph_edit_distance(exp_elements, exp_relations, act_elements, act_relations)
        print_ged(ged_result)

        # accumulate for aggregate P/R/F1 report
        agg['elements']['tp'] += len(set(exp_elements) & set(act_elements))
        agg['elements']['fp'] += len(elem_logs['fp'])
        agg['elements']['fn'] += len(elem_logs['fn'])
        agg['relations']['tp'] += rel_metrics['TP']
        agg['relations']['fp'] += len(rel_logs['fp'])
        agg['relations']['fn'] += len(rel_logs['fn'])

        # accumulate the UNION of types used across the whole test suite, for
        # a suite-wide coverage figure (a single model rarely exercises much
        # of the standard's vocabulary on its own)
        all_actual_element_types.update(act_elements.values())
        all_expected_element_types.update(exp_elements.values())
        for counter in act_relations.values():
            all_actual_relation_types.update(counter.keys())
        for counter in exp_relations.values():
            all_expected_relation_types.update(counter.keys())

        csv_rows.append({
            'model': model_name,
            'elem_precision': elem_metrics['Precision'], 'elem_recall': elem_metrics['Recall'],
            'elem_f1': elem_metrics['F1-Score'],
            'rel_precision': rel_metrics['Precision'], 'rel_recall': rel_metrics['Recall'],
            'rel_f1': rel_metrics['F1-Score'],
            'ged': ged_result['ged'] if ged_result else '',
            'ged_normalized': ged_result['normalized_ged'] if ged_result else '',
        })
        if ged_result:
            all_ged_values.append(ged_result['ged'])
            all_normalized_ged_values.append(ged_result['normalized_ged'])

    # ---- aggregate (micro-averaged) summary across all models -------------
    print(f"\n{'=' * 70}\nOVERALL (micro-averaged across all models)\n{'=' * 70}")
    for label in ('elements', 'relations'):
        tp, fp, fn = agg[label]['tp'], agg[label]['fp'], agg[label]['fn']
        precision, recall, f1 = _prf(tp, fp, fn)
        print(f"{label:12s} Precision: {precision:.4f}  Recall: {recall:.4f}  F1: {f1:.4f}  "
              f"(TP={tp}, FP={fp}, FN={fn})")

    if all_ged_values:
        print(f"\nGraph Edit Distance across all models:")
        print(f"  Sum of GED            : {sum(all_ged_values):.1f}")
        print(f"  Avg GED per model     : {sum(all_ged_values) / len(all_ged_values):.2f}")
        print(f"  Avg normalized GED    : {sum(all_normalized_ged_values) / len(all_normalized_ged_values):.4f}")
    elif not _HAS_NETWORKX:
        print("\nGraph Edit Distance: networkx not installed - skipped.")

    # ---- suite-wide type coverage: "how much of ArchiMate's modelling ----
    # capability does the transformation use, across all test models?"
    print(f"\n{'=' * 70}\nTYPE COVERAGE ACROSS ALL MODELS (entire transformation)\n{'=' * 70}")

    act_elem_cov, act_elem_unclassified = compute_element_coverage(all_actual_element_types)
    print_type_coverage("ELEMENTS, generated model (total)", act_elem_cov, act_elem_unclassified)

    exp_elem_cov, exp_elem_unclassified = compute_element_coverage(all_expected_element_types)
    print_type_coverage("ELEMENTS, expected/test corpus (reference)", exp_elem_cov, exp_elem_unclassified)

    act_rel_cov, act_rel_unclassified = compute_relation_coverage(all_actual_relation_types)
    print_type_coverage("RELATIONS, generated model (total)", act_rel_cov, act_rel_unclassified)

    exp_rel_cov, exp_rel_unclassified = compute_relation_coverage(all_expected_relation_types)
    print_type_coverage("RELATIONS, expected/test corpus (reference)", exp_rel_cov, exp_rel_unclassified)

    if csv_output and csv_rows:
        with open(csv_output, 'w', newline='', encoding='utf-8') as f:
            writer = csv.DictWriter(f, fieldnames=list(csv_rows[0].keys()))
            writer.writeheader()
            writer.writerows(csv_rows)
        print(f"\nPer-model results written to: {csv_output}")

    coverage_csv = (os.path.splitext(csv_output)[0] + "_type_coverage.csv") if csv_output else None
    if coverage_csv:
        with open(coverage_csv, 'w', newline='', encoding='utf-8') as f:
            writer = csv.writer(f)
            writer.writerow(['source', 'kind', 'group', 'used_count', 'total', 'pct', 'used', 'missing'])
            for source_label, cov in (('actual', act_elem_cov), ('expected', exp_elem_cov)):
                for group, stats in cov.items():
                    writer.writerow([source_label, 'element', group, stats['used_count'], stats['total'],
                                      f"{stats['pct']:.1f}", ';'.join(stats['used']), ';'.join(stats['missing'])])
            for source_label, cov in (('actual', act_rel_cov), ('expected', exp_rel_cov)):
                for group, stats in cov.items():
                    writer.writerow([source_label, 'relation', group, stats['used_count'], stats['total'],
                                      f"{stats['pct']:.1f}", ';'.join(stats['used']), ';'.join(stats['missing'])])
        print(f"Type coverage table written to: {coverage_csv}")


if __name__ == "__main__":
    # By default, evaluate the model folders next to this script. This keeps
    # the command independent of the current working directory.
    SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
    BASE_DIR = sys.argv[1] if len(sys.argv) > 1 else SCRIPT_DIR
    csv_output = os.path.join(SCRIPT_DIR, "results_summary.csv")
    main(BASE_DIR, csv_output=csv_output)

# SCOPED_MODELS = True  for scoped model evaluation False for full model evaluation