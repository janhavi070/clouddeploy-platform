#!/bin/bash

set -e

echo "====================================="
echo "Deploying to Kubernetes"
echo "====================================="

kubectl rollout restart deployment clouddeploy-app -n clouddeploy

echo ""
echo "Waiting for rollout..."

kubectl rollout status deployment clouddeploy-app -n clouddeploy

echo ""
echo "Deployment completed successfully!"
