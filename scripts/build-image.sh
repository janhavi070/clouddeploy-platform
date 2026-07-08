#!/bin/bash

set -e

echo "====================================="
echo "Building Docker Image"
echo "====================================="

docker build -t clouddeploy-platform:latest ./app

echo ""
echo "Docker image built successfully!"

docker images | grep clouddeploy-platform
