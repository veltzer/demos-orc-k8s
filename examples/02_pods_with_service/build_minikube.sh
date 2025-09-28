#!/bin/bash -eu

image_name=$(basename "${PWD}")
minikube image build --tag "${image_name}" .
