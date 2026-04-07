FROM opencode-tools/base:latest

RUN apk add --no-cache \
    go \
    gcc \
    musl-dev

ENTRYPOINT ["opencode"]