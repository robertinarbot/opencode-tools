FROM opencode-tools/base:latest

COPY install/go.sh /tmp/install/go.sh
RUN sh /tmp/install/go.sh && rm -rf /tmp/install

ENTRYPOINT ["opencode"]