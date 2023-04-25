#!/bin/sh

kubectl get pods --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'
