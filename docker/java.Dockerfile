FROM opencode-tools/base:latest

COPY install/java.sh /tmp/install/java.sh
RUN sh /tmp/install/java.sh && rm -rf /tmp/install

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk
ENV PATH=$JAVA_HOME/bin:$PATH

ENTRYPOINT ["opencode"]