#!/bin/bash -e

for i in {0..1}
do
	name=$(kubectl get pod -l app=myapp -o jsonpath="{.items[$i].metadata.name}")
	kubectl exec -it "${name}" -- curl myservice | head -5
done
