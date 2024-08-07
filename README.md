# Completeness Evaluation of 5G Core Networks

## How it works

We use the API definitions from 3gpp to create an invetory list of the 5GC operations per NF. The list can then be used to tick of the operations and hence the features that a 5GC implementation supports.

**Generate Inventory List from OpenAPI Specs**

To do this, run the convert.sh script. This script reads the services.txt file. The file contains a list of the Open API specs to process. The names are the files names of the Open API specs in the `5G_APIs` git submodule.

Running the script will generate html sites with an inventory list of the Operations supported by each service. The list can be used to create a list of `plantuml` variables with different colors depending on whether the operation is supported or not.

```bash
./convert.sh
```

**Generate Procedures sequence diagrams**

In this step we generate the sequence diagrams for the 5G procedures. We color code the steps in the sequence diagram to depict whether the steps is supported by the system (5GC) or not. The color codes can be generated by updating the inventory list from above. To update it open the `index.html` file using an browser. Update the `services.txt` file and select the supported operations. Download the file `plantuml` file with variable definitions and paste it in the folder `5G_Procedures/vars`. Afterwards run the `generate.sh` script to generate UML diagrams. The scripts reads the `procedures.txt` file on the list of procedures to process. The name of the procedure corresponds to the file name in the folder `5G_Procedures`.

**View inventory of supported procedures**

To view a list of the procedures open the file `5G_Procedures/index.html` using any browser. Upload the `procedures.txt` file.

**Use OpenAPI Generator to create inventory list**
```bash
# Extract html templates to modify and modify them (have already done so, see sample/templates/html)
docker run --rm \
  -v ${PWD}/openapi:/local openapitools/openapi-generator-cli \
  author template -g html --library webclient -o /local/templates/html

# Generate html inventory list using our custom template
docker run --rm \
  -v ${PWD}/openapi:/local \
  -v ${PWD}/5G_APIs:/home \
  openapitools/openapi-generator-cli generate \
  -g html \
  -t /local/templates/html/ \
  -o /local/out/html \
  -i /home/TS29518_Namf_Communication.yaml

docker run --rm \
  -v ${PWD}/openapi:/local \
  -v ${PWD}/5G_APIs:/home \
  openapitools/openapi-generator-cli generate \
  -g plantuml \
  -o /local/out/plantuml \
  -i /home/TS29518_Namf_Communication.yaml
```

## Generate Procedure diagrams

The project use [plantuml](https://plantuml.com) to generate the sequence diagrams for 5G Procedures. The sequence diagram are drawn with color codes to show whether the action is supported or not, and whether isn't not specified. The sequence diagrams reads JSON object inventory of the services/operations supported. The operations are derived from the Open API specs. The colors are as following:

- green: operation supported
- red: operation not supported
- grey: not specified if supported or not
- black: operation not part of the Open API specs

**Running app**

In oder to run the app you need docker installed. To change the input or output for the sequence diagram you can change the volume mount binds. e.g., to change the output for the png file change `-v ${PWD}/5G_UMLs/Out:/home/out` to `-v ${PWD}/OUTPUT_FOLDER:/home/out`. You should change the mounts on the host machine and not on docker as the plantuml definition uses the folder names as specified. To process all the files you mount in the `/home/puml` folder on docker replace `/home/puml/TS23502_Registration.puml` with `"/home/puml/*.puml"`

```bash
docker run --rm \
  -v ${PWD}/5G_UMLs/Procedures:/home/puml \
  -v ${PWD}/5G_UMLs/Vars:/home/vars \
  -v ${PWD}/5G_UMLs/Out:/home/out \
  tariromukute/plantuml -o /home/out/ \
  /home/puml/TS23502_Registration.puml
```

**Drawing diagrams per core network**

In order to draw the UML (Sequence) diagrams per network core we create a seperate folder for each core network. Under each we create two folders:
- `Vars`: The folder contains the inventory list of the operations per NF or NF service.
- `Procedures`: This is where we will write the UML diagrams.

We use the `draw.sh` script to draw the procedure diagrams for all procedures in the `procedures.txt` file. We can possibly trigger drawing of all the puml files but some of the procedures are not used standalone, they are 'sub procedures'. See the how to trigger below

```bash
# Replace <input_dir> with the relative path to the Vars folder e.g., comparison/oai-cn5g/Vars
# Replace <output_dir> with the relative path to the Procedures folder e.g., comparison/oai-cn5g/Procedures
./draw.sh <input_dir> <output_dir>
```

## Running the site locally (using docker)

```bash
# Build from the mkdocs-material image with added plugins (defined in Dockerfile)
docker build -t tariromukute/mkdocs-material .

# Start
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material
```

## Setup to update `5G_APIs` with changes from `https://forge.3gpp.org/rep/all/5G_APIs.git`

```bash
cd 5G_APIs

git checkout -b REL-18-update

git remote add gpp3 https://forge.3gpp.org/rep/all/5G_APIs.git
git remote update

# Get changes from the release branch
# Note: Changed some NF service titles for consistency and autogeneration, so will need to resolve conflicts
git merge --allow-unrelated-histories gpp3/REL-18
```