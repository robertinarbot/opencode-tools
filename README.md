# Opencode Docker Images

Docker images for opencode with pre-installed build tools.

## Image Hierarchy

Images are built in a hierarchy where language-specific images extend the base image:

```
base (opencode + git, ssh, curl, ca-certificates)
├── rust     → base + rust/cargo
├── go       → base + go, gcc, musl-dev
├── java     → base + openjdk17, maven, gradle
├── javascript → base + nodejs, npm, yarn
│   └── cdk  → javascript + aws-cdk
└── all      → base + all language tools
```

## Architecture

Install logic is abstracted into shell scripts in `docker/install/`:

- `install/rust.sh` - Rust toolchain
- `install/go.sh` - Go toolchain
- `install/java.sh` - Java, Maven, Gradle
- `install/javascript.sh` - Node.js, npm, yarn
- `install/cdk.sh` - AWS CDK (extends javascript)

Each language Dockerfile copies and runs its install script. The `all.Dockerfile` copies all scripts and runs them in a loop, so new languages are automatically included.

## Images

| Image | Description |
|-------|-------------|
| `base` | Base image with git, ssh, curl |
| `go` | Go build tools |
| `java` | Java, Maven, Gradle |
| `javascript` | Node.js, npm, yarn |
| `rust` | Rust toolchain |
| `cdk` | AWS CDK |
| `all` | All tools (Go, Java, JavaScript, Rust, CDK) |

## Usage

```bash
# Pull a specific version
docker pull ghcr.io/robertinarbot/opencode-tools/base:1.3.17
docker pull ghcr.io/robertinarbot/opencode-tools/go:1.3.17
docker pull ghcr.io/robertinarbot/opencode-tools/java:1.3.17
docker pull ghcr.io/robertinarbot/opencode-tools/javascript:1.3.17
docker pull ghcr.io/robertinarbot/opencode-tools/rust:1.3.17
docker pull ghcr.io/robertinarbot/opencode-tools/cdk:1.3.17
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
