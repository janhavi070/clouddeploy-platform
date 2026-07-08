#!/bin/bash

set -e

echo "======================================="
echo "Building Docker Image"
echo "======================================="

IMAGE_NAME=janhavi070/clouddeploy-platform
IMAGE_TAG=${BUILD_NUMBER:-latest}

docker build \
-t ${IMAGE_NAME}:${IMAGE_TAG} \
-t ${IMAGE_NAME}:latest \
./app

echo ""
echo "Docker image built successfully"

docker images | grep clouddeploy-platform
