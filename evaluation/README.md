# Evaluation

This folder provides all files used for the evaluation.

The folders are organized as follows:

| Folder | Purpose |
| :----- | :------ |
| Boutique Shop | Actual EDMM model, expected ArchiMate EA model with business layer, expected ArchiMate EA model without business layer, both in ArchiMate Exchange Format and ArchiMate Modeling Project of the Boutique Shop  case |
| Meitrex | Actual EDMM model, expected ArchiMate EA model with business layer, expected ArchiMate EA model without business layer, both in ArchiMate Exchange Format and ArchiMate Modeling Project of the Meitrex case |
| OTEL-Shop-Ansible |Actual EDMM model, expected ArchiMate EA model with business layer, expected ArchiMate EA model without business layer, both in ArchiMate Exchange Format and ArchiMate Modeling Project of the OTEL-Shop-Ansible case |
| OTEL-Shop-Kubernetes | Actual EDMM model, expected ArchiMate EA model with business layer, expected ArchiMate EA model without business layer, both in ArchiMate Exchange Format and ArchiMate Modeling Project of the OTEL-Shop-Kubernetes case |
| OTEL-Shop-Terraform | Actual EDMM model, expected ArchiMate EA model with business layer, expected ArchiMate EA model without business layer, both in ArchiMate Exchange Format and ArchiMate Modeling Project of the OTEL-Shop-Terraform case |
| T2Store-Microservices | Actual EDMM model, expected ArchiMate EA model with business layer, expected ArchiMate EA model without business layer, both in ArchiMate Exchange Format and ArchiMate Modeling Project of the T2Store-Microservices case |
| T2Store-Modulith | Actual EDMM model, expected ArchiMate EA model with business layer, expected ArchiMate EA model without business layer, both in ArchiMate Exchange Format and ArchiMate Modeling Project of the T2Store-Modulith case |

## Running evaluation 

The evaluation script compares the generated ArchiMate models with the
corresponding expected models. Run the following commands from the repository
root:

```powershell
cd .\evaluation
python -m pip install -r .\requirements.txt
python .\eval_with_ged.py
```

The script evaluates all model folders in `evaluation` and writes the result
files `results_summary.csv` and `results_summary_type_coverage.csv` to this
folder:

The script uses only Python's standard library and the optional `networkx`
package for Graph Edit Distance calculation. Without `networkx`, the other
evaluation metrics still run, but Graph Edit Distance is skipped.

The evaluation was tested with the following versions:

```text
Python 3.14.0
networkx==3.6.1
```
