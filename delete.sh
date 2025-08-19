#!/usr/bin/env bash
set -e

echo "▶ Deleting all resources in this kustomize folder..."
kubectl delete -k . || true

echo "▶ Deleting namespace..."
kubectl delete -f namespace.yml || true

echo "✅ All resources deleted."
