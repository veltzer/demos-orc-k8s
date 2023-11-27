#!/bin/sh
image_name=$(basename "${PWD}")
minikube image rm "${image_name}"
