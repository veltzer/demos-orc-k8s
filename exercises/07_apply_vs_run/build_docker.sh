#!/bin/bash -eu

image_name=$(basename "${PWD}")
docker buildx build --tag "${image_name}:latest" .
