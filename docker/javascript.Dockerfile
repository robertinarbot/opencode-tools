FROM opencode-tools/base:latest

RUN apk add --no-cache \
    git \
    curl \
    ca-certificates \
    nodejs \
    npm \
    yarn

ENTRYPOINT ["opencode"]