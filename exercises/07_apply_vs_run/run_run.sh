#!/bin/bash -eu

image_name=$(basename "${PWD}")
kubectl run app --image "${image_name}" --image-pull-policy=Never
