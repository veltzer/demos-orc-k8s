* Create a python web server that has two urls:
	/ - just serves some content
	/crash - causes the server to die
* run that pythong idividually using:
	$ kubectl run ...
	now kill the container by accessing it's /crash url
	What happens?
* run that python as a pod with replication level=1 in k8s with a demployment yaml
	file with the command:
	$ kubectl apply -f [deployment.yaml]
	now kill the container by accessing it's /crash url
	What happens?
