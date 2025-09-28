#!/bin/bash -eu

image_name=$(basename "${PWD}")
docker buildx build --tag "${image_name}" .
minikube image rm "${image_name}" || true
minikube image load "${image_name}"
