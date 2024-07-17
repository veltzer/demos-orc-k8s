#!/bin/bash -e

# eval "$(minikube docker-env)"
kubectl create -f '*.yaml'
