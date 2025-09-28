#!/bin/bash -eu

wget -O- --quiet "http://$(minikube ip):30000" | head
# xdg-open "http://$(minikube ip):30000"
# wget -O- --quiet localhost:8080 | head
