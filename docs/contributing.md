# Contributing

**Thank you for considering contributing to this 5G Core Network Implementation Comparison project!** 

Your contributions help improve the accuracy and comprehensiveness of the data.

## Updating support status

### Updating Implementation Data

To update information about a specific 5G Core Network implementation, follow these steps:

1. **Fork** the repository.
2. **Clone** your forked repository to your local machine.
3. **Navigate** to the `_data` directory.
4. **Locate** the directory corresponding to the 5G Core Network provider you want to update.
5. **Open** the relevant `.json` file for the Network Function Service (NFS) you want to modify.
6. **Update** the boolean values for the NFS operations to reflect the implementation status of the corresponding endpoints.
7. **Commit** your changes and **push** them to your forked repository.
8. **Create** a pull request to the main repository.

### Data Structure

The `_data` directory is organized as follows:

```
_data
├── <5GC provider>
│   ├── Vars
│   │   └── <Network Function Service>.json
│   └── ...
└── ...
```

* `<5GC provider>`: The name of the 5GC provider.
* `Vars`: Folder for json files for network function services
* `<Network Function Service>.json`: Contains information about the implemented endpoints for a specific network function service.

The JSON file contains an object with keys corresponding to Network Function Service Operations and values as boolean indicators of implementation status.

**Example:**

```json
{
  "Namf_Communication_AMFStatusChangeSubscribeModfy": true,
  "Namf_Communication_AMFStatusChangeUnSubscribe": false,
  "Namf_Communication_CancelRelocateUEContext": true,
  // ... other operations
}
```

## Adding or Updating NF definitions

If the NF updates are part of a new release, you need to update the 5G API definitions first.

**Setup to update `5G_APIs` with changes from `https://forge.3gpp.org/rep/all/5G_APIs.git`**

```bash
cd 5G_APIs

git checkout -b REL-18-update

git remote add gpp3 https://forge.3gpp.org/rep/all/5G_APIs.git
git remote update

# Get changes from the release branch
# Note: Changed some NF service titles for consistency and autogeneration, so will need to resolve conflicts
git merge --allow-unrelated-histories gpp3/REL-18
```

You will then need to:
1. Update the `services.txt` with any new services from the release.
2. Run `convert.sh`: This create html files that will be used to update the `<Network Function Service>.json` for each 5GC.

**Verify update**

After the above steps, other developers should be able to see the new services or updates on the inventory dashboard (open file.html in a browser).

## Adding or Updating UML diagrams

The UML diagrams are defined in `5G_UMLs/Procedures`. To update or add a new UML diagram
1. Check if a file for the UML diagram already exist, the naming convention is `<TS Number>_<Title>` where `TS Number` is the 3GPP specification that defines the procedure, and `<Title>` is the title of the procedure in the specification written in snake case e.g., TS23502_AN_Release
2. If file doens't already exist create, then draw the diagram following the convention, see `5G_UMLs/Procedures/TS23502_Registration.puml`.

**Drawing diagrams per core network**

In order to draw the UML (Sequence) diagrams per network core we create a seperate folder for each core network. Under each we create two folders:
- `Vars`: The folder contains the inventory list of the operations per NF or NF service.
- `Procedures`: This is where we will write the UML diagrams.

We use the `draw.sh` script to draw the procedure diagrams for all procedures in the `procedures.txt` file. We can possibly trigger drawing of all the puml files but some of the procedures are not used standalone, they are 'sub procedures'. See the how to trigger below

```bash
# Replace <input_dir> with the relative path to the Vars folder e.g., _data/oai-cn5g/Vars
# Replace <output_dir> with the relative path to the Procedures folder e.g., _data/oai-cn5g/Procedures
./draw.sh <input_dir> <output_dir>
```

We appreciate your contributions and look forward to improving the project together!
 
**Note:** For more complex changes or additions, please open an issue to discuss the proposed changes before submitting a pull request.