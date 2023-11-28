#!/bin/bash -e
image_name=$(basename "${PWD}")
minikube image rm "${image_name}"
