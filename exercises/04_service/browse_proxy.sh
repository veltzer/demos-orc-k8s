#!/bin/bash -e

namespace="default"
service_name="my-service"
port="8080"
url="http://localhost:8001/api/v1/namespaces/${namespace}/services/${service_name}:${port}/proxy"
# echo "url is ${url}"
# url="http://google.com"

if ! wget -O- --quiet "${url}"
then
	echo "error with wget"
fi
