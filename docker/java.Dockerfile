FROM ghcr.io/anomalyco/opencode:latest

RUN apk add --no-cache \
    git \
    curl \
    ca-certificates \
    openjdk17 \
    maven \
    gradle

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk
ENV PATH=$JAVA_HOME/bin:$PATH

ENTRYPOINT ["opencode"]