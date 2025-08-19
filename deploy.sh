#!/usr/bin/env bash

set -e

echo "▶ Applying namespace..."
kubectl apply -f namespace.yml

echo "▶ Deploying all Kubernetes resources using kustomize..."
kubectl apply -k .

echo "✅ Deployment completed!"
