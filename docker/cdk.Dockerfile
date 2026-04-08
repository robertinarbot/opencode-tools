ARG JS_IMAGE=ghcr.io/anomalyco/opencode:latest
FROM ${JS_IMAGE}

COPY install/cdk.sh /tmp/install/cdk.sh
RUN sh /tmp/install/cdk.sh && rm -rf /tmp/install

ENTRYPOINT ["opencode"]