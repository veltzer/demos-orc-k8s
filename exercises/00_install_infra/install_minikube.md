# Install `kubectl` and `minikube`

Install `kubectl` and `minikube` with the following steps:
* Review the script called `install_kubectl_minikube.sh`
* Run it
* Look at `~/binaries` to see if you have `kubectl` and `minikube` in it.
* Re-login or re-read your `~/.bashrc` so that your `PATH` will include `~/binaries`
* See that you can use the `kubectl` and `minikube` commands:
    `$ which kubectl`
    `$ which minikube`
* Now activate Minikube by running `$ minikube start --driver=docker`
    Look at the output to see that all goes well.
* Review the `show_stuff.sh` script and run it to see stuff about your k8s cluster.
