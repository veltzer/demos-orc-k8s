#!/bin/bash -e
image_name=$(basename "${PWD}")

# one way of doing it
# docker buildx build --tag "${image_name}" .
# minikube image rm "${image_name}" || true
# minikube image load "${image_name}"

# second way of doing it
minikube image build --tag "${image_name}" .
