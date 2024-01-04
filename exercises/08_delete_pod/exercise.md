# Deleting pods

* write a python app that catches signal `SIGTERM`.
* package it in a docker image and deploy it as a pod.
* do `kubectl delete pod [yourpod]`. What happened?
* do `kubectl delete --force pod [yourpod]`. What happened?
* do `kubectl delete --grace-period=0 [yourpod]`. What happened?
* now change your app to catch `SIGTERM` and remain running. how long do you have until k8s kills you with SIGTERM?
* show how to change that time period

References:
* [pod-termination](https://unofficial-kubernetes.readthedocs.io/en/latest/concepts/abstractions/pod-termination)
