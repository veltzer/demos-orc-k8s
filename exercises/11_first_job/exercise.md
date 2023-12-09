# First job

* write a python app that calculates the sum of squares until 100,000,000
    this will take about 10 seconds or so
* wrap it up in a docker image
* create a job that will run your image once, call the deploynet `job.yaml`
* run your job using:
    `$ kubectl apply -f job.yaml`
    remember to put:
        imagePullPolicy: Never
    so that minikube will not try to pull your image from docker.hub
* view your job using:
    `$ kubectl get jobs`
* see details of your job using:
    `$ kubectl describe jobs.batch [yourjobname]`
* look at your logs using:
    `$ kubectl logs jobs/[yourjobname]`
* when the job is done show the logs of your job
* delete your job with:
    `$ kubectl delete jobs.batch [yourjobname]`

Notice that in the exercise so far the job lives in your cluster forever. You may want to get ridd of this
job after some time. So here is the second part:

* use `ttlSecondsAfterFinished: 100` in your `job.yaml` so that the job gets erased automatically after a certain time.
* see that it works.

References:
* [job specification in k8s](https://kubernetes.io/docs/concepts/workloads/controllers/job)
* [auto cleanup of jobs](https://kubernetes.io/docs/concepts/workloads/controllers/ttlafterfinished)
