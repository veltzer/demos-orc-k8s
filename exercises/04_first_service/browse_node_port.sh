#!/bin/bash -eu

ip=$(minikube ip)
{ wget -O- --quiet "http://${ip}:30000" || true; } | head
# xdg-open "http://$(minikube ip):30000"
# wget -O- --quiet localhost:8080 | head
