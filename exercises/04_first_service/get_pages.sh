#!/bin/bash -eu

for i in {0..2}
do
	name=$(kubectl get pod -l app=myapp -o jsonpath="{.items[${i}].metadata.name}")
	echo "name is ${name}..."
	kubectl exec -it "${name}" -- curl myservice | head -5
done
