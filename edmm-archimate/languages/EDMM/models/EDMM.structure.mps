<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a9e59ede-7fd0-48c5-9ce0-ba11c2db39c7(EDMM.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
        <property id="672037151186491528" name="presentation" index="1L1pqM" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <reference id="1075010451642646892" name="defaultMember" index="1H5jkz" />
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="1sN103qRkCK">
    <property role="EcuMT" value="1671684288403032624" />
    <property role="TrG5h" value="Artifact" />
    <property role="34LRSv" value="artifact" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1sN103qRkCN" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="1sN103qRkCO" role="1TKVEl">
      <property role="IQ2nx" value="1671684288403032628" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="1sN103qRkCQ" role="1TKVEl">
      <property role="IQ2nx" value="1671684288403032630" />
      <property role="TrG5h" value="fileURI" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="25R3W" id="1sN103qRkEo">
    <property role="3F6X1D" value="1671684288403032728" />
    <property role="TrG5h" value="PropertyType" />
    <ref role="1H5jkz" node="1sN103qRkEs" resolve="STRING" />
    <node concept="25R33" id="1sN103qRkEp" role="25R1y">
      <property role="3tVfz5" value="1671684288403032729" />
      <property role="TrG5h" value="BOOLEAN" />
      <property role="1L1pqM" value="boolean" />
    </node>
    <node concept="25R33" id="1sN103qRkEq" role="25R1y">
      <property role="3tVfz5" value="1671684288403032730" />
      <property role="TrG5h" value="DOUBLE" />
    </node>
    <node concept="25R33" id="1sN103qRkEr" role="25R1y">
      <property role="3tVfz5" value="1671684288403032731" />
      <property role="TrG5h" value="INTEGER" />
    </node>
    <node concept="25R33" id="1sN103qRkEs" role="25R1y">
      <property role="3tVfz5" value="1671684288403032732" />
      <property role="TrG5h" value="STRING" />
    </node>
  </node>
  <node concept="1TIwiD" id="1sN103qRFrJ">
    <property role="EcuMT" value="1671684288403125999" />
    <property role="TrG5h" value="Property" />
    <property role="34LRSv" value="property" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="1sN103qRFrM" role="1TKVEl">
      <property role="IQ2nx" value="1671684288403126002" />
      <property role="TrG5h" value="key" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="1sN103qRFrN" role="1TKVEl">
      <property role="IQ2nx" value="1671684288403126003" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="1sN103qRFrO" role="1TKVEl">
      <property role="IQ2nx" value="1671684288403126004" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" node="1sN103qRkEo" resolve="PropertyType" />
    </node>
    <node concept="1TJgyi" id="1sN103qRFrP" role="1TKVEl">
      <property role="IQ2nx" value="1671684288403126005" />
      <property role="TrG5h" value="required" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="1sN103qRFrR">
    <property role="EcuMT" value="1671684288403126007" />
    <property role="TrG5h" value="Operation" />
    <property role="34LRSv" value="operation" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="1sN103qRFrS" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="1sN103qRFrT" role="1TKVEi">
      <property role="IQ2ns" value="1671684288403126009" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="artifacts" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="1sN103qRkCK" resolve="Artifact" />
    </node>
  </node>
  <node concept="1TIwiD" id="1sN103qRFrV">
    <property role="EcuMT" value="1671684288403126011" />
    <property role="TrG5h" value="ComponentType" />
    <property role="34LRSv" value="Component Type" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" node="1sN103qRFs8" resolve="ModelElementType" />
    <node concept="1TJgyj" id="1sN103qRFrW" role="1TKVEi">
      <property role="IQ2ns" value="1671684288403126012" />
      <property role="20kJfa" value="parentType" />
      <ref role="20lvS9" node="1sN103qRFrV" resolve="ComponentType" />
    </node>
  </node>
  <node concept="1TIwiD" id="1sN103qRFs0">
    <property role="EcuMT" value="1671684288403126016" />
    <property role="TrG5h" value="ModelEntity" />
    <property role="34LRSv" value="Model Entity" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1sN103qRFs3" role="1TKVEi">
      <property role="IQ2ns" value="1671684288403126019" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="properties" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="1sN103qRFrJ" resolve="Property" />
    </node>
    <node concept="1TJgyj" id="1sN103qRFs4" role="1TKVEi">
      <property role="IQ2ns" value="1671684288403126020" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="operations" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="1sN103qRFrR" resolve="Operation" />
    </node>
    <node concept="PrWs8" id="1sN103qRFs2" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="1sN103qRFs6">
    <property role="EcuMT" value="1671684288403126022" />
    <property role="TrG5h" value="ModelElement" />
    <property role="34LRSv" value="model element" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="1sN103qRFs0" resolve="ModelEntity" />
  </node>
  <node concept="1TIwiD" id="1sN103qRFs8">
    <property role="EcuMT" value="1671684288403126024" />
    <property role="TrG5h" value="ModelElementType" />
    <property role="34LRSv" value="model element type" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="1sN103qRFs0" resolve="ModelEntity" />
  </node>
  <node concept="1TIwiD" id="1sN103qRFK6">
    <property role="EcuMT" value="1671684288403127302" />
    <property role="TrG5h" value="Component" />
    <property role="34LRSv" value="Component" />
    <ref role="1TJDcQ" node="1sN103qRFs6" resolve="ModelElement" />
    <node concept="1TJgyj" id="1sN103qRG4g" role="1TKVEi">
      <property role="IQ2ns" value="1671684288403128592" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="artifacts" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="1sN103qRkCK" resolve="Artifact" />
    </node>
    <node concept="1TJgyj" id="1sN103qRG4h" role="1TKVEi">
      <property role="IQ2ns" value="1671684288403128593" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1sN103qRFrV" resolve="ComponentType" />
    </node>
  </node>
  <node concept="1TIwiD" id="1sN103qRG4j">
    <property role="EcuMT" value="1671684288403128595" />
    <property role="TrG5h" value="DeploymentModel" />
    <property role="34LRSv" value="Deployment Model" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="1sN103qRG4k" role="1TKVEi">
      <property role="IQ2ns" value="1671684288403128596" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="modelEntities" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="1sN103qRFs0" resolve="ModelEntity" />
    </node>
    <node concept="1TJgyj" id="1sN103qRG4l" role="1TKVEi">
      <property role="IQ2ns" value="1671684288403128597" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="property" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="1sN103qRFrJ" resolve="Property" />
    </node>
    <node concept="PrWs8" id="5W7OEz$DCxr" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="1sN103qRG4n">
    <property role="EcuMT" value="1671684288403128599" />
    <property role="TrG5h" value="RelationType" />
    <property role="34LRSv" value="Relation Type" />
    <ref role="1TJDcQ" node="1sN103qRFs8" resolve="ModelElementType" />
    <node concept="1TJgyj" id="1sN103qRG4p" role="1TKVEi">
      <property role="IQ2ns" value="1671684288403128601" />
      <property role="20kJfa" value="parentType" />
      <ref role="20lvS9" node="1sN103qRG4n" resolve="RelationType" />
    </node>
  </node>
  <node concept="1TIwiD" id="1sN103qRG4r">
    <property role="EcuMT" value="1671684288403128603" />
    <property role="TrG5h" value="Relation" />
    <property role="34LRSv" value="Relation" />
    <ref role="1TJDcQ" node="1sN103qRFs6" resolve="ModelElement" />
    <node concept="1TJgyj" id="1sN103qRG4s" role="1TKVEi">
      <property role="IQ2ns" value="1671684288403128604" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1sN103qRG4n" resolve="RelationType" />
    </node>
    <node concept="1TJgyj" id="1sN103qRG4t" role="1TKVEi">
      <property role="IQ2ns" value="1671684288403128605" />
      <property role="20kJfa" value="source" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1sN103qRFK6" resolve="Component" />
    </node>
    <node concept="1TJgyj" id="1sN103qRG4u" role="1TKVEi">
      <property role="IQ2ns" value="1671684288403128606" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="1sN103qRFK6" resolve="Component" />
    </node>
  </node>
</model>

