# How it works

We use the API definitions from 3gpp to create an invetory list of the 5GC operations per NF. The list can then be used to tick of the operations and hence the features that a 5GC implementation supports.

## The Network Function tables

The API specifications define endpoints/operations per network function service. We create a json file per network function service, with key pair values representing whether the endpoint is supported or not.

**Example: `Namf_Communication.json`**

```json
{
  "Namf_Communication_AMFStatusChangeSubscribeModfy": true,
  "Namf_Communication_AMFStatusChangeUnSubscribe": false,
  "Namf_Communication_CancelRelocateUEContext": true,
  // ... other operations
}
```

We create a collection of the network function service json per 5GC network. These collections are using to generate the tables. Updating the status of the NF service support by a 5GC implementation translate to update the value in the respective json file.

## The Procedure diagrams

The project use [plantuml](https://plantuml.com) to generate the sequence diagrams for 5G Procedures. The sequence diagram are drawn with color codes to show whether the action is supported or not, and whether isn't not specified. The sequence diagrams reads JSON file from the collection detailed. The operations are derived from the Open API specs. The colors are as following:

- green: operation supported
- red: operation not supported
- grey: not specified if supported or not
- black: operation not part of the Open API specs