#!/bin/bash -e
image_name=$(basename "${PWD}")
# docker run --network=host -it "${image_name}"
docker run -p 8080:8080 -it "${image_name}"
