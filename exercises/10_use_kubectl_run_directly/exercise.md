# User `kubectl run` directly

* run your own app that you can kill with a web access
* run two nginx pods from the command line using:
    `kubectl run kubectl run nginx --image=nginx --replicas=2`
* kill one of the pods using `kubectl kill`
* did it get restarted?
* can you control it?

References:
* [run](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#run)
