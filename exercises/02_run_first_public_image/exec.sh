#!/bin/bash -eu

POD=$(kubectl get pod -l app=nginx -o jsonpath="{.items[0].metadata.name}")
kubectl exec -it "${POD}" -- bash
