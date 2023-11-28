# Deploying your first service

The idea of this exercise is to learn about k8s services.
We will deploy two things in this exercise: a pod, replicated twice,
and a service, all from the same yaml file.

In this exercise you are creating 2 k8s objects: 1 deployment with replication=2 and 1 service (load balancer).
And we connecting them in a very specific way:
* The service is provides a stable point of communication.
* The pods are connected to the service.

Instructions
* Create a deployment file with a `nginx` replicated twice and a service.
* Deploy it.
* See your newly created service with:
    `$ kubectl show services`
    `$ kubectl describe service [service_name]`
    * Note that a services called `kubernetes` is already there. Don't touch it.
* You can't still access your service. To access it we will use port forwarding:
    `$ kubectl port-forward my-service:8080`
    Now you can access your service at `localhost:8080`
    The problem with port-forwarding is that you have to keep the port forwarding
    process alive to forward your ports.
