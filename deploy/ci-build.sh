#!/usr/bin/env bash

# Expects DOCKER_TAGS to be set.
set -euxo pipefail

docker build --file=./Dockerfile --tag=openhsr/gamejam .
for tag in $DOCKER_TAGS; do
    docker tag openhsr/gamejam "$tag"
done
