#!/bin/sh
image_name=$(basename "${PWD}")
kubectl run app --image "${image_name}" --image-pull-policy=Never
