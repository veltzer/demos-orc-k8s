#!/bin/bash -e

folder="${HOME}/binaries"
if [ -d "${folder}" ]
then
	rm -rf "${folder}"
fi
mkdir "${folder}"

echo "installing kubectl"
# instructions for installing k8s are at
# https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
version=$(curl --silent --location "https://dl.k8s.io/release/stable.txt")
echo "installing latest version ${version}"
executable="${folder}/kubectl"
curl --location --silent --output "${executable}" "https://dl.k8s.io/release/${version}/bin/linux/amd64/kubectl"
chmod +x "${executable}"
