#!/bin/bash -eu

docker_env=$(minikube docker-env)
eval "${docker_env}"
image_name=$(basename "${PWD}")
kubectl run app --image="${image_name}" --image-pull-policy=Never
