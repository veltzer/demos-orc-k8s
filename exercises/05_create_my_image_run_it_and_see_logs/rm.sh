#!/bin/bash -eu

image_name=$(basename "${PWD}")
minikube image rm "${image_name}"
