#!/bin/bash -e

namespace="default"
service_name="my-service"
url="http://localhost:8001/api/v1/namespaces/${namespace}/services/${service_name}/proxy"

wget -O- -nv "${url}" | head
