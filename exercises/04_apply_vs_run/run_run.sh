#!/bin/sh
image_name="$(basename $PWD)"
kubectl run app --image "${image_name}:latest" --image-pull-policy=Never
