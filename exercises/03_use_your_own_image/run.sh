#!/bin/bash -eu

eval "$(minikube docker-env)"
image_name=$(basename "${PWD}")
kubectl run app --image="${image_name}" --image-pull-policy=Never
