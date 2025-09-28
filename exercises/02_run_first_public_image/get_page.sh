#!/bin/bash -eu

# find the ip of the host of the deployment
for i in {0..2}
do
	ip=$(kubectl get pod -l app=nginx -o jsonpath="{.items[${i}].status.podIP}")
	echo "ip is ${ip}"
	echo "curl --silent http://${ip} | head; exit" | minikube ssh
done
