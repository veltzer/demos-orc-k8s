#!/bin/bash -e
docker build --tag flask:local --file Dockerfile .
# everything is built, take a look
docker images
