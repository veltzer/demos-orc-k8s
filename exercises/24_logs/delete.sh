#!/bin/bash -e
image_name=$(basename "${PWD}")

kubectl delete jobs.batch myjob
minikube image rm "${image_name}"
