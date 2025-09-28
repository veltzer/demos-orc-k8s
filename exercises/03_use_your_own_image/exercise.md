# Pull image from local Docker into Minikube

* Pull an image (nginx) to your local docker repository.

```bash
docker pull nginx
```

* Copy that image into your Minikube repository using:

```bash
minikube image load nginx
```

* Run a deployment on Minikube that uses that image.

* Create your own image from a Python app that prints regularly to standard output.
use the following command to build your image:

```bash
docker build [params] .
```

load your image to Minikube using:

```bash
minikube image rm "${image_name}"
minikube image load "${image_name}"
```

* Run that image using:

```bash
kubectl run [params]
```

remember to pass `--image-pull-policy=Never` as a parameter

* See that pod running using:

```bash
kubectl get pods
```

* See the logs of the pod using:

```bash
kubectl logs [...]
```

* Terminate the pod using:

```bash
kubectl delete pod [...]
```
