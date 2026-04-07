#!/bin/sh
set -e

apk add --no-cache \
    openjdk17 \
    maven \
    gradle

export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export PATH=$JAVA_HOME/bin:$PATH
