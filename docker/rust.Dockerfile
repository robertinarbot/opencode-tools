FROM ghcr.io/anomalyco/opencode:latest

RUN apk add --no-cache \
    git \
    curl \
    ca-certificates \
    rust \
    cargo

ENTRYPOINT ["opencode"]