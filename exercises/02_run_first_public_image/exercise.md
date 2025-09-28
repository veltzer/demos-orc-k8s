# Deploy first public image

* create a `deployment.yaml` file to deploy standard nginx on your cluster

* deploy on your cluster using:

```bash
kubectl apply -f deployment.yaml
```

* see your new pod using:

```bash
kubectl get pods
```

* see more information about your new pod using:
    
```bash
kubectl describe pods
```

* expose the port of your pod to the outside network.

* access you nginx web server from the host.

use `get(1)` or `curl(1)`, or just a browser

* enter your pod using:

```bash
kubectl exec -it
```

* run your deployment command again. Did k8s deploy another pod? Why?

* Deploy 2 nginx pods using `replicas: 2` and show how you can access each nginx
    separately. Do not use a service!
