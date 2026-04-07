# Opencode Docker Images

Docker images for opencode with pre-installed build tools.

## Images

| Image | Description |
|-------|-------------|
| `base` | Base image with git, ssh, curl |
| `go` | Go build tools |
| `java` | Java, Maven, Gradle |
| `javascript` | Node.js, npm, yarn |
| `rust` | Rust toolchain |
| `all` | All tools (Go, Java, JavaScript, Rust) |

## Usage

```bash
# Pull a specific version
docker pull ghcr.io/robertinarbot/opencode-tools/base:1.3.17
docker pull ghcr.io/robertinarbot/opencode-tools/go:1.3.17
docker pull ghcr.io/robertinarbot/opencode-tools/java:1.3.17
docker pull ghcr.io/robertinarbot/opencode-tools/javascript:1.3.17
docker pull ghcr.io/robertinarbot/opencode-tools/rust:1.3.17
docker pull ghcr.io/robertinarbot/opencode-tools/all:1.3.17
```

## Building

### Manual Build

```bash
# Build specific version
docker build -f docker/base.Dockerfile -t opencode-tools:base .
```

### Via GitHub Actions

1. Create a new release or trigger workflow dispatch with a version number
2. The workflow will build and push all images with the specified version tag

## Automated Version Check

The `check-version.yml` workflow runs daily to check for new opencode versions. If a new version is found, it triggers the build workflow and creates an issue.

## GitHub Container Registry

Images are published to: [ghcr.io/robertinarbot/opencode-tools](https://github.com/robertinarbot/opencode-tools/pkgs/container/opencode-tools)
