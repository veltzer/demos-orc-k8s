#!/bin/sh
image_name=$(basename "${PWD}")
docker build --tag "${image_name}" .
minikube image build --tag "${image_name}" .
