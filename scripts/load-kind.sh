#!/bin/bash

set -e

CLUSTER_NAME="clouddeploy"
IMAGE_NAME="clouddeploy-platform"
IMAGE_TAG="latest"

echo "====================================="
echo "Loading Docker Image into Kind"
echo "====================================="

kind load docker-image ${IMAGE_NAME}:${IMAGE_TAG} --name ${CLUSTER_NAME}

echo ""
echo "Image loaded successfully!"
