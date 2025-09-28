#!/bin/bash -eu

ip0=$(kubectl get pod -l app=nginx -o jsonpath="{.items[0].status.podIP}")
ip1=$(kubectl get pod -l app=nginx -o jsonpath="{.items[1].status.podIP}")
echo "ip0 is ${ip0}"
echo "ip1 is ${ip1}"
