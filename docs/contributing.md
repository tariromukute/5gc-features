# Contributing

**Thank you for considering contributing to this 5G Core Network Implementation Comparison project!** 

Your contributions help improve the accuracy and comprehensiveness of the data.

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
 
We appreciate your contributions and look forward to improving the project together!
 
**Note:** For more complex changes or additions, please open an issue to discuss the proposed changes before submitting a pull request.