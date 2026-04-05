FROM ghcr.io/anomalyco/opencode:latest

RUN apk add --no-cache \
    git \
    openssh-client \
    curl \
    ca-certificates

RUN adduser -D opencode && \
    mkdir -p /home/opencode/.ssh && \
    chmod 700 /home/opencode/.ssh

USER opencode
WORKDIR /home/opencode

ENTRYPOINT ["opencode"]
