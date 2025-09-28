#!/bin/bash -eu

# eval "$(minikube docker-env)"
kubectl create -f '*.yaml'
