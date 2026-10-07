# edmm-to-archimate

This repository contains the implementation and evaluation artifacts for the
master's thesis:

> *Towards Automated Enterprise Architecture Maintenance: A Model-to-Model
> Transformation Approach Using Deployment Models*

The project presents a model-to-model transformation implemented in
[JetBrains MPS](https://www.jetbrains.com/mps/). It transforms deployment
models conforming to the EDMM ([Essential deployment metamodel](https://github.com/UST-EDMM/edmm)) language into enterprise architecture models based on the [ArchiMate](https://www.opengroup.org/archimate-forum/archimate-overview) language.

The transformation aims to reduce the manual modelling effort required to
maintain enterprise architecture models. By deriving ArchiMate models from
deployment models, changes in the deployed environment can be transferred to
the corresponding enterprise architecture more efficiently.

The repository includes:

- JetBrains MPS languages and model-to-model transformation rules
- An ArchiMate sandbox for importing EDMM deployment models
- EDMM and ArchiMate example models
- Evaluation models and expected transformation results
- Scripts and data for evaluating the generated ArchiMate models

## Supported Deployment Models

The evaluation data includes deployment models for different application and
deployment scenarios, including Kubernetes, Terraform, Ansible, and other
cloud-native application architectures.

## Repository Structure

```text
edmm-archimate/ -> JetBrains MPS project containing the languages and transformation
evaluation/     -> Evaluation models, expected results, and evaluation scripts
README.md       -> Project overview and documentation
```

## Evaluation

The evaluation compares generated ArchiMate models with manually constructed
reference models using:

- Element and relationship coverage
- Attribute-based metrics
- Graph similarity metrics

For details on opening the MPS project and running the transformation, see the
[MPS project README](./edmm-archimate/README.md).

## Thesis

The thesis link will be added here once the thesis has been published.
