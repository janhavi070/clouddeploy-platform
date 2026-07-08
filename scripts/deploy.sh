#!/bin/bash

set -e

NAMESPACE="clouddeploy"
DEPLOYMENT="clouddeploy-app"

echo "====================================="
echo "Deploying to Kubernetes"
echo "====================================="

kubectl rollout restart deployment/${DEPLOYMENT} -n ${NAMESPACE}

echo ""
echo "Waiting for rollout..."

kubectl rollout status deployment/${DEPLOYMENT} -n ${NAMESPACE}

echo ""
echo "Deployment completed successfully!"
