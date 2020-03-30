#!/bin/sh
microk8s.kubectl run --image=flask:local flask --port=8000
microk8s.kubectl get po
