#!/bin/bash -e
kubectl run --image=flask:local flask --port=8000
