#!/bin/bash -e

# find the ip of the host of the deployment
ip=$(minikube ip)
echo "ip is ${ip}"
wget --quiet -O - "${ip}:80" | head
