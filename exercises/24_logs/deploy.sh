#!/bin/bash -e

kubectl delete job myjob || true
kubectl create -f ./*.yaml
