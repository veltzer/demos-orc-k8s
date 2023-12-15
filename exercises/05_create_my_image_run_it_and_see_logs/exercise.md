# Run your own image

### this is a mistake

* create your own image from a pyton app that prints regularly to standard output.
    You will need to use:
        `$ minikube image build [params] .`
    instead of the regular:
        `$ docker build [params] .`
* run that image using:
    `$ kubectl run [params]`
* see that pod running using:
    `$ kubectl get pods`
* see the logs of the pod using:
    `$ kubectl logs [...]`
* terminate the pod using:
    `$ kubectl delete pod [...]`
