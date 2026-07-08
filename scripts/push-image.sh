#!/bin/bash

set -e

echo "======================================="
echo "Pushing Docker Image"
echo "======================================="

IMAGE_NAME=janhavi070/clouddeploy-platform
IMAGE_TAG=${BUILD_NUMBER}

docker push ${IMAGE_NAME}:${IMAGE_TAG}
docker push ${IMAGE_NAME}:latest

echo ""
echo "Docker Hub push completed."
