FROM ghcr.io/anomalyco/opencode:latest

RUN apk add --no-cache \
    git \
    curl \
    ca-certificates \
    go \
    gcc \
    musl-dev

ENTRYPOINT ["opencode"]