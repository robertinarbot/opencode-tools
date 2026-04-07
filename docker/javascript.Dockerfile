FROM opencode-tools/base:latest

COPY install/javascript.sh /tmp/install/javascript.sh
RUN sh /tmp/install/javascript.sh && rm -rf /tmp/install

ENTRYPOINT ["opencode"]