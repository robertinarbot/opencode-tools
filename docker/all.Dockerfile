FROM opencode-tools/base:latest

RUN apk add --no-cache \
    git \
    curl \
    ca-certificates \
    go \
    gcc \
    musl-dev \
    openjdk17 \
    maven \
    gradle \
    nodejs \
    npm \
    yarn \
    rust \
    cargo

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk
ENV PATH=$JAVA_HOME/bin:$PATH

ENTRYPOINT ["opencode"]