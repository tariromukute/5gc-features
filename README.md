# 5GC Implementaion completeness analyis

## How it works

We use the API definitions from 3gpp to create an invetory list of the 5GC operations per NF. The list can then be used to tick of the operations and hence the features that a 5GC implementation supports.


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
  -i /home/TS29518_Namf_Communication.yaml \
  -g html \
  -t /local/templates/html/ \
  -o /local/out/html

docker run --rm \
  -v ${PWD}/openapi:/local \
  -v ${PWD}/5G_APIs:/home \
  openapitools/openapi-generator-cli generate \
  -i /home/TS29518_Namf_Communication.yaml \
  -g plantuml \
  -o /local/out/plantuml
```

```bash
docker run --rm \
  -v ${PWD}/5G_UMLs:/home tariromukute/plantuml /home/example.puml

docker run --rm \
  -v ${PWD}/openapi/out/plantuml:/home tariromukute/plantuml /home/schemas.plantuml
```