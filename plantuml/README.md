# PlantUML Image

## Getting started

**Build docker image**

```bash
# Build image
docker build -t tariromukute/plantuml:latest .

# Push image
docker push tariromukute/plantuml:latest
```

**Run app**

```bash
docker run --rm \
  -v ${PWD}/opt:/home tariromukute/plantuml /home/example.puml
```