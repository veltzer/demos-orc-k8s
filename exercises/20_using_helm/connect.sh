#!/bin/bash -e
kubectl run my-release-mysql-client --rm --tty -i --restart="Never" --image "docker.io/bitnami/mysql:8.4.0-debian-12-r3" --namespace default --env "MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}" --command -- bash -c "mysql -h 10.110.249.134 -uroot --password=${MYSQL_ROOT_PASSWORD}"


# kubectl run my-release-mysql-client --rm --tty -i --restart="Never" --image "docker.io/bitnami/mysql:8.4.0-debian-12-r3" --env "MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}" -- bash
