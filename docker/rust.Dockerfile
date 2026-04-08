ARG BASE_IMAGE=ghcr.io/anomalyco/opencode:latest
FROM ${BASE_IMAGE}

COPY install/rust.sh /tmp/install/rust.sh
RUN sh /tmp/install/rust.sh && rm -rf /tmp/install

ENTRYPOINT ["opencode"]