FROM opencode-tools/base:latest

COPY install/*.sh /tmp/install/
RUN for script in /tmp/install/*.sh; do sh "$script"; done && rm -rf /tmp/install

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk
ENV PATH=$JAVA_HOME/bin:$PATH

ENTRYPOINT ["opencode"]