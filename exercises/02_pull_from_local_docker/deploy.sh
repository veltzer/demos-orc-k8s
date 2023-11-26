#!/bin/bash -e

eval $(minikube docker-env)
kubectl apply -f *.yaml
