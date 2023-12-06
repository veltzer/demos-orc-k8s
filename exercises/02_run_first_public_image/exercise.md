# Deploy first public image

* create a `deployment.yaml` file to deploy standard nginx on your cluster
* deploy on your cluster using:
    `$ kubectl apply -f deployment.yaml`
* see your new pod using:
    `$ kubectl get pods`
* see more information about your new pod using:
    `$ kubectl describe pods`
* expose the port of your pod to the outside network.
* access you nginx web server from the host.
    use wget(1) or curl(1), or just a browser
* enter your pod using:
    `$ kubectl exec -it`
* run your deployment command again.
    did k8s deploy another pod? Why?
* Deploy 2 nginx pods using "replicas: 2" and show how you can access each nginx
    separately.
