#!/bin/bash -e

# find the ip of the host of the deployment
ip=$(kubectl get pod -l app=nginx -o jsonpath="{.items[0].status.podIP}")
echo "ip is ${ip}"
wget --quiet -O - "${ip}:80" | head
