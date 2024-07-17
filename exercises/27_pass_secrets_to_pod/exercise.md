# Pass Secrets to pods

* Create a pod which is based on bash (so you would need to package a container)

* Deploy that pod to your k8s cluster with some secrets.

* Enter the pod with 'kubectl exec' and show the secrets.

* Creating secrets can be done in two ways: using a yaml file with: king: Secret or
    on the command line with kubectl create secret. Choose whatever you like best.
