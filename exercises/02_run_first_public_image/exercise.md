# Deploy first public image

* Create a `deployment.yaml` file to deploy standard nginx on your cluster

* Deploy on your cluster using:

```bash
kubectl apply -f deployment.yaml
```

* See your new pod using:

```bash
kubectl get pods
```

* See more information about your new pod using:

```bash
kubectl describe pods
```

* Expose the port of your pod to the outside network.

* Access you nginx web server from the host.

use `get(1)` or `curl(1)`, or just a browser

* Enter your pod using:

```bash
kubectl exec -it [pod_name] -- bash
```

* Run your deployment command again. Did k8s deploy another pod? Why?

* Deploy 3 nginx pods using `replicas: 3` and show how you can access each nginx
    separately. Do not use a service!
