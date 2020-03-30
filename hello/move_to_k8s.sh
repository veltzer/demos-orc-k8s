docker save flask > flask.tar
microk8s ctr image import flask.tar
# show that the image is there
microk8s ctr images ls
