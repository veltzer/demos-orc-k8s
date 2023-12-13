# Pull image from local Docker into minikube

* pull an image (nginx) to your local docker repository.
    `$ docker pull nginx`
* copy that image into your minikube repository using:
    `$ minikube image load nginx`
* then run a deployment on minikube that uses that image.

* create your own image from a pyton app that prints regularly to standard output.
    use the following command to build your image:
        `$ docker build [params] .`
    load your image to minikube using:
        `$ minikube image rm "${image_name}"`
        `$ minikube image load "${image_name}"`
* run that image using:
    `$ kubectl run [params]`
* see that pod running using:
    `$ kubectl get pods`
* see the logs of the pod using:
    `$ kubectl logs [...]`
* terminate the pod using:
    `$ kubectl delete pod [...]`
