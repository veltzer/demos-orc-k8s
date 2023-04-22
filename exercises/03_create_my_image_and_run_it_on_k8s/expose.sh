microk8s.kubectl expose pod flask --port=8000 --target-port=8000 --name=flask-http --external-ip=10.1.26.1
# see the exposed service
microk8s.kubectl get service
