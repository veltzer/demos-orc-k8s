# Deploying your first service

The idea of this exercise is to learn about k8s services.
We will deploy two things in this exercise: a pod, replicated twice,
and a service, all from the same yaml file.

In this exercise you are creating 2 k8s objects: 1 deployment with replication=2 and 1 service (load balancer).
And we connecting them in a very specific way:
* The service is provides a stable point of communication.
* The pods are connected to the service.

## We will expose the service to the outside world using three ways
* node port
* proxy
* port forwarding

## Instructions
* Create a deployment file with a `nginx` replicated twice and a service.
* Deploy it.
* See your newly created service with:
    `$ kubectl show services`
    `$ kubectl describe service [service_name]`
    * Note that a services called `kubernetes` is already there. Don't touch it.
* You can't still can't access your service, can you?

## Access with node port
* add a `type: NodePort` and `nodePort: 30000` to your service yaml and redeploy.
* now access your service via: `http://$(minikube ip):30000"`

## Access with proxy
* run a kubectl proxy:
    `$ kubectl proxy`
* now access your service via:
    `http://localhost:8001/api/v1/namespaces/[namespace]/services/[service-name]/proxy`
    namespace = defualt
    service-name = your service name
* The problem with the proxy is that you have to keep the proxy process alive to access your service.

## Access with port forwarding
* Create a port forwarder to your service:
    `$ kubectl port-forward [serice-name]:8080`
* Now you can access your service at `localhost:8080`
* The problem with port-forwarding is that you have to keep the port forwarding process alive access your service.
