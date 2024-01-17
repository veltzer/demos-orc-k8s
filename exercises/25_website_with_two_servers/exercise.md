# Website with two web servers

* Deploy two identical web servers with a deployment and replicas=2.
* Make each server return a page that you can identify (one would return "Hello from server 1" and the other would return "Hello from server 2"
* Deploy a service in front of those two replicas.
* Access the service describe how k8s balances traffic in front of those two servers.
