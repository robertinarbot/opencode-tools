FROM opencode-tools/base:latest

RUN apk add --no-cache \
    rust \
    cargo

ENTRYPOINT ["opencode"]