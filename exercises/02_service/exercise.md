- Same as the hello, create a docker image with a web server.
- import it into the local microk8s repo
- run two pods with that image
- create a load balancer -> "service" which is connected to the two pods.
- expose the ip/port of the load balancer.
- see that you can access the load balancer.

In this exercise you are creating 2 k8s objects: 1 pod with replication=2 and 1 load balancer.
And we connecting them in a very specific way:

								------- POD1
								|
			service (with exposed IP/PORT) ---------|
								|
								------- POD2
