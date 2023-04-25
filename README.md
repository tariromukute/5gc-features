# 5GC Implementaion completeness analyis

## How it works

We use the API definitions from 3gpp to create an invetory list of the 5GC operations per NF. The list can then be used to tick of the operations and hence the features that a 5GC implementation supports.



```bash
docker run --rm \
  -v ${PWD}:/local openapitools/openapi-generator-cli generate \
  -i /local/petstore.yaml \
  -g markdown \
  -o /local/out/markdown
```

```bash
docker run --rm \
  -v ${PWD}:/opt tariromukute/plantuml example.puml
```