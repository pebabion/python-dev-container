#!/usr/bin/env bash

set -e

DOCKER_ID=pebabion
IMAGE=python-dev-container


if [ $# -eq 0 ]
    then
        tag="$DOCKER_ID/$IMAGE:latest"
    else
        tag="$DOCKER_ID/$IMAGE:$1"
fi


echo "$tag"

docker build -t "$tag" --file "./docker/Dockerfile" "./docker"
docker push $tag
