#!/bin/bash

set -e

IMAGE_NAME="clouddeploy-platform"
IMAGE_TAG="latest"

echo "====================================="
echo "Building Docker Image"
echo "====================================="

docker build -t ${IMAGE_NAME}:${IMAGE_TAG} ./app

echo ""
echo "Docker image built successfully!"

docker images | grep ${IMAGE_NAME}
