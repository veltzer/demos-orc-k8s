- create a "deployment.yaml" file to deploy nginx on your cluster
- deploy on your cluster using:
	$ kubectl apply -f deployment.yaml
- see your new pod using:
	$ kubectl get pods
- see more information about your new pod using:
	$ kubectl describe pods
- find out how to expose the ports of you pod to the outside network - and do it.
- access you nginx web server from the host.
	use wget
- enter your pod using:
	$ kubectl exec -it 
- run your deployment command again.
	did k8s deploy another pod? Why?
