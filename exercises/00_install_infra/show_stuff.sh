#!/bin/bash -e

echo "showing pods"
kubectl get pods --all-namespaces
echo "showing services"
kubectl get services --all-namespaces
echo "showing deployments"
kubectl get deployments --all-namespaces
