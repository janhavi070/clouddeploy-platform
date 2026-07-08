#!/bin/bash

set -e

echo "====================================="
echo "Loading Docker Image into Kind"
echo "====================================="

kind load docker-image clouddeploy-platform:latest --name clouddeploy

echo ""
echo "Image loaded successfully!"
