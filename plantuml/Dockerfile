FROM openjdk:11

WORKDIR /opt

COPY docker-entrypoint.sh .


RUN apt-get update && apt-get install -y wget --no-install-recommends

# Build Graphviz from source because there are no binary distributions for recent versions
ARG GRAPHVIZ_VERSION=8.0.2
ARG GRAPHVIZ_BUILD_DIR=/tmp/graphiz-build
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        build-essential \
        libexpat1-dev \
        libgd-dev \
        zlib1g-dev \
        && \
    mkdir -p $GRAPHVIZ_BUILD_DIR && \
    cd $GRAPHVIZ_BUILD_DIR && \
    curl -o graphviz.tar.gz https://gitlab.com/api/v4/projects/4207231/packages/generic/graphviz-releases/${GRAPHVIZ_VERSION}/graphviz-${GRAPHVIZ_VERSION}.tar.gz && \
    tar -xzf graphviz.tar.gz && \
    cd graphviz-$GRAPHVIZ_VERSION && \
    ./configure && \
    make && \
    make install && \
    apt-get remove -y \
        build-essential \
        libexpat1-dev \
        libgd-dev \
        zlib1g-dev \
        && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf $GRAPHVIZ_BUILD_DIR

# Download .jar file
RUN curl -o /opt/plantuml.jar https://tenet.dl.sourceforge.net/project/plantuml/plantuml.jar

RUN chmod +x /opt/docker-entrypoint.sh

# ENTRYPOINT ["/opt/docker-entrypoint.sh"]

# CMD ["help"]
ENTRYPOINT tail -f /dev/null