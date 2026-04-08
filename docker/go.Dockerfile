ARG BASE_IMAGE=ghcr.io/anomalyco/opencode:latest
FROM ${BASE_IMAGE}

COPY install/go.sh /tmp/install/go.sh
RUN sh /tmp/install/go.sh && rm -rf /tmp/install

ENTRYPOINT ["opencode"]