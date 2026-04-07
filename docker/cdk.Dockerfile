FROM opencode-tools/javascript:latest

COPY install/cdk.sh /tmp/install/cdk.sh
RUN sh /tmp/install/cdk.sh && rm -rf /tmp/install

ENTRYPOINT ["opencode"]