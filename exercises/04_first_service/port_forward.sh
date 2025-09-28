#!/bin/bash -eu

kubectl port-forward service/my-service 8080:80
