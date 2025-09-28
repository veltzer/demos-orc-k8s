#!/bin/bash -eu

ip0=$(kubectl get pod -l app=nginx -o jsonpath="{.items[0].status.podIP}")
ip1=$(kubectl get pod -l app=nginx -o jsonpath="{.items[1].status.podIP}")
echo "curl --silent http://${ip0} | head; exit" | minikube ssh
echo "curl --silent http://${ip1} | head; exit" | minikube ssh
