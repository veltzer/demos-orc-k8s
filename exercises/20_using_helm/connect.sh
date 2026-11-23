#!/bin/bash -eu

encoded_password=$(kubectl get secret --namespace default my-release-mysql -o jsonpath="{.data.mysql-root-password}")
MYSQL_ROOT_PASSWORD=$(base64 -d <<<"${encoded_password}")
# echo "password is ${MYSQL_ROOT_PASSWORD}"

# delete the old my-release-mysql-client pod
kubectl delete pods my-release-mysql-client || true

# run bash on a mysql client machine
# kubectl run my-release-mysql-client --rm --tty -i --restart="Never" --image "docker.io/bitnami/mysql" --env "MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}" --command -- bash

# connect to mysql
kubectl run my-release-mysql-client --rm --tty -i --restart="Never" --image "docker.io/bitnami/mysql" --namespace default --env "MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}" --command -- bash -c 'mysql -h my-release-mysql -uroot --password=\$\{MYSQL_ROOT_PASSWORD\}'
