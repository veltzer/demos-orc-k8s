# Get to know the k8s dashboard

* We assume that you have a new minikube running

* By default minikube does not come with a dashboard

* Run:
    `$ kubectl get pods --all-namespaces`
    and verity that you don't see dashboard pods there

* Install the dashboard addon:
    `$ minikube addons enable dashboard`
    `$ minikube addons enable metrics-server`

* Now see the new pods with:
    `$ kubectl get pods --all-namespaces`
    and verify that you do see dashboard pods there

* To expose the dashboard port to the outside world we will define a service.
    Take the attached `minikube-dashboard.yaml` file and apply it like this:
    `$ kubectl apply -f minikube-dashboard.yaml`

* Now view the dashboard by accessing the ip of minikube:
    `$ minikube ip`
    at port 31000

* Now familiarize yourself with the kubernetes dashboard.
    * the namespace selector
    * the various objects
    * the search bar
    * the settings

* Please note that there are other ways to expose the dashboard:
    [link](https://stackoverflow.com/questions/47173463/how-to-access-local-kubernetes-minikube-dashboard-remotely)
