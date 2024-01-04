# First job

* Write a python app that calculates the sum of squares until 100,000,000.
    this will take about 10 seconds or so.
* Wrap it up in a docker image.
* Create a job that will run your image once, call the deployment `job.yaml`
* Run your job using:
    `$ kubectl apply -f job.yaml`
    remember to put:
        imagePullPolicy: Never
    so that Minikube will not try to pull your image from docker.hub
* View your job using:
    `$ kubectl get jobs`
* See details of your job using:
    `$ kubectl describe jobs.batch [yourjobname]`
* Delete your job with:
    `$ kubectl delete jobs.batch [yourjobname]`

Notice that in the exercise so far the job lives in your cluster forever. You may want to get rid of this job after some time. So here is the second part:

* Use `ttlSecondsAfterFinished: 100` in your `job.yaml` so that the job gets erased automatically after a certain time.
* See that it works.

References:
* [Job specification in k8s](https://kubernetes.io/docs/concepts/workloads/controllers/job)
* [Auto cleanup of jobs](https://kubernetes.io/docs/concepts/workloads/controllers/ttlafterfinished)
