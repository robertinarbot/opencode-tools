FROM opencode-tools/base:latest

COPY install/rust.sh /tmp/install/rust.sh
RUN sh /tmp/install/rust.sh && rm -rf /tmp/install

ENTRYPOINT ["opencode"]