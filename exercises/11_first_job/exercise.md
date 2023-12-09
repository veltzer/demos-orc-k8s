# First job

* write a python app that calculates the sum of squares until 100,000,000
    this will take about 10 seconds or so
* wrap it up in a docker image
* create a job that will run your image once, call the deploynet `job.yaml'
* run your job using:
    `$ kubectl apply -f job.yaml`
    remember to put:
        imagePullPolicy: Never
    so that minikube will not try to pull your image from docker.hub
* view your job using:
    `$ kubectl get jobs`
* look at your logs using:
    `$ kubectl logs jobs/[your_job_name]`
* when the job is done show the logs of your job
* delete your job with:
    `$ kubectl delete jobs.batch [your_job_name]`

References:
* [job specification in k8s](https://kubernetes.io/docs/concepts/workloads/controllers/job)
