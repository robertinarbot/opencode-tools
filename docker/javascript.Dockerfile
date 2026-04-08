ARG BASE_IMAGE=ghcr.io/anomalyco/opencode:latest
FROM ${BASE_IMAGE}

COPY install/javascript.sh /tmp/install/javascript.sh
RUN sh /tmp/install/javascript.sh && rm -rf /tmp/install

ENTRYPOINT ["opencode"]