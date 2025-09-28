# Get to know the k8s dashboard

* We assume that you have a new Minikube running

* By default Minikube does not come with a dashboard

* Run:

```bash
kubectl get pods --all-namespaces
```

and verity that you don't see dashboard pods there

* Install the dashboard add on:

```bash
minikube addons enable dashboard
minikube addons enable metrics-server
```

* Now see the new pods with:

```bash
kubectl get pods --all-namespaces
```

* See that you can connect via ssh

```bash
# to find the ip of machine running the dashboard
kubectl describe -n kubernetes-dashboard pods/kubernetes-dashboard-855c9754f9-s8rx9  | grep "^IP:"
minikube ssh
curl "[the_ip_you_found_earlier]:9090"
```

and verify that you do see dashboard pods there

* To expose the dashboard port to the outside world we will define a service.
    Take the attached `minikube-dashboard.yaml` file and apply it like this:
    `$ kubectl apply -f minikube-dashboard.yaml`

* Now view the dashboard by accessing the ip of Minikube:
    `$ minikube ip`
    at port 31000

* Now familiarize yourself with the Kubernetes dashboard.
    * the namespace selector
    * the various objects
    * the search bar
    * the settings

* Please note that there are other ways to expose the dashboard:
    [link](https://stackoverflow.com/questions/47173463/how-to-access-local-kubernetes-minikube-dashboard-remotely)

* for people on AWS:
    run:
`$ kubectl proxy &`
    lets assume that you dashboard port on the AWS machine is 8001

* on your Windows/Mac/Linux local machine:
    `$ ssh -L 12345:localhost:8001 ubuntu@[yourip]`
    and then point your browser to `localhost:12345`

* If you want to see your dashboard without a NodePort service assuming port 80 is open to the outside world (add sudo if you want a restricted port like 80 below)

* run:
    `kubectl -n kubernetes-dashboard port-forward service/kubernetes-dashboard --address 0.0.0.0 80:9090 &`

* Then create a tunnel to port 9090 of your machine in the cloud
    `ssh -i [private_key_file] -L [local_port]:localhost:[remote_port] [user]@[remote_address]`
