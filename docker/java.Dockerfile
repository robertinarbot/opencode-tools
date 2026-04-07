FROM opencode-tools/base:latest

RUN apk add --no-cache \
    openjdk17 \
    maven \
    gradle

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk
ENV PATH=$JAVA_HOME/bin:$PATH

ENTRYPOINT ["opencode"]