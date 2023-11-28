#!/bin/bash -e

namespace="default"
service_name="my-service"
url="http://localhost:8001/api/v1/namespaces/${namespace}/services/${service_name}/proxy"

if ! wget -O- --quiet "${url}"
then
	echo "error with wget"
fi
