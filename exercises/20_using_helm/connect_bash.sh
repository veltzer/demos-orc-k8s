#!/bin/bash -e
kubectl run my-ubuntu --rm --tty -i --restart="Never" --image "ubuntu:latest" --namespace default -- bash
