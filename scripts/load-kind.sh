#!/bin/bash

set -e

echo "======================================="
echo "Loading Docker Image into Kind"
echo "======================================="

IMAGE_NAME=janhavi070/clouddeploy-platform
IMAGE_TAG=${BUILD_NUMBER:-latest}

kind load docker-image ${IMAGE_NAME}:${IMAGE_TAG} \
--name clouddeploy

echo ""
echo "Image loaded successfully!"
