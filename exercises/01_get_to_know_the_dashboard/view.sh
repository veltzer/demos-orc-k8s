#!/bin/bash -eu

ip=$(minikube ip)
xdg-open "http://${ip}:31000"
