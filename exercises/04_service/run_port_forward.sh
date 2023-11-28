#!/bin/bash -e

kubectl port-forward service/my-service 5000:80
