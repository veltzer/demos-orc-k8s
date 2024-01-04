# Logs

* Write a simple app that logs lines *and flushes them*
* Wrap it up in a docker image
* Upload it to Minikube
* Create a job that will run your image once, call the deployment `job.yaml`
* Run your job using:
    `$ kubectl apply -f job.yaml`
    remember to put:
        imagePullPolicy: Never
    so that Minikube will not try to pull your image from docker.hub
* Monitor your logs via
    `$ kubectl logs -f job/myjob`

References:
* [Job specification in k8s](https://kubernetes.io/docs/concepts/workloads/controllers/job)
