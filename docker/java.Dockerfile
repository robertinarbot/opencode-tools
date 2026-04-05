FROM ghcr.io/anomalyco/opencode:latest

RUN apk add --no-cache \
    git \
    openssh-client \
    curl \
    ca-certificates \
    openjdk17 \
    maven \
    gradle

RUN adduser -D opencode && \
    mkdir -p /home/opencode/.ssh && \
    chmod 700 /home/opencode/.ssh

USER opencode
WORKDIR /home/opencode

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk
ENV PATH=$JAVA_HOME/bin:$PATH

ENTRYPOINT ["opencode"]
