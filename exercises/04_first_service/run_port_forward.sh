#!/bin/bash -eu

kubectl port-forward service/my-service 5000:80
