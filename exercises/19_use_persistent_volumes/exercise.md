# Using persistent volumes

The purpose of this exercise is to use persistent volumes in k8s, which, in simple terms,
means using a disk that doesn't go away when the app using it dies either normally or
abnormally.

* Write two python apps, one that writes data to a file and one that reads data from that same file.
    The file should be in a folder called `/data`.

* Define a `PersistentVolume` as a simple folder of type `local`.

* Define a `PersistentVolumeClaim` as a claim against the `PersistentVolume` defined before.

* Define a `writer` and `reader` pods with the writing app that will write to the `PersistentVolumeClaim` defined before.

* Run your writer pod for a while and see that it writes correctly.

* Kill your pod.

* Run your reader pod and see that it reads the data left by the writer.

## References
[Persistent Volumes](https://kubernetes.io/docs/tasks/configure-pod-container/configure-persistent-volume-storage/)
