# edmm-archimate

This project is a [JetBrains MPS](https://www.jetbrains.com/mps/) project for
transforming **EDMM deployment models** into **ArchiMate enterprise
architecture models**. It contains the EDMM and ArchiMate languages, the
transformation rules, example models, and an importer.

## Opening the project

1. Install JetBrains MPS (see [Installing MPS](#installing-mps)).
2. Clone this repository locally or download it as a ZIP file.
3. In MPS, select **File > Open Project**.
4. Select the `edmm-archimate` directory and open the project.
5. Wait until MPS has loaded and indexed the modules and dependencies. The
   project view should then display the `EDMM` and `ArchiMate` languages as
   well as the solutions.

The project should be opened with the MPS version specified in the
[Version used](#version-used) section. Using a different version may cause
incompatibilities with the language and module definitions.

## Running the transformation

1. In the project view, right-click `ArchiMate.sandbox` and select
   **Import Deployment Model from YAML**.
2. Select an EDMM YAML model using the file explorer. Example evaluation models
   are located in the repository at
   `..\evaluation\<model-name>\<model-name>_actual.yaml`, relative to the
   `edmm-archimate` directory. For example:
   `..\evaluation\boutiqueshop\boutiqueshop_actual.yaml`.
3. Make sure that the model is saved and that MPS does not report any errors.
4. Rebuild the project by right-clicking **edmm-archimate** and selecting
   **Rebuild Project**.
5. MPS runs the generators. The deployment elements described in the EDMM
   model are transformed into an ArchiMate model.
5. The generated model can then be opened and inspected in the project.
   Generated files are stored in the `source_gen` directories used by MPS and
   should not be edited manually.

After making changes to the EDMM model, run the transformation again using
**Build > Make Project**. Errors and warnings are displayed in the MPS Build
window.

## Installing MPS

JetBrains MPS can be downloaded free of charge from the official
[JetBrains MPS download page](https://www.jetbrains.com/mps/download/).
This project requires **MPS 2026.1.1**. After downloading MPS, run the
installer for your operating system and start MPS.

## Version used

This project was developed and tested with **JetBrains MPS 2026.1.1**.
