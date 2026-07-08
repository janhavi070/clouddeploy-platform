#!/bin/bash

set -e

echo "======================================="
echo "Deploying CloudDeploy"
echo "======================================="

ENVIRONMENT=${ENVIRONMENT:-development}

helm upgrade --install clouddeploy \
./helm/clouddeploy \
-f helm/clouddeploy/values-${ENVIRONMENT}.yaml \
--set image.tag=${BUILD_NUMBER:-latest} \
--set config.buildNumber=${BUILD_NUMBER:-local} \
--set config.gitCommit=${GIT_COMMIT:-unknown} \
-n clouddeploy

echo
echo "Waiting for rollout..."

kubectl rollout status deployment/clouddeploy-app \
-n clouddeploy

echo
echo "Deployment completed."
