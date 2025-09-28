#!/bin/bash -eu

folder="${HOME}/binaries"
if [ -d "${folder}" ]
then
	echo "removing previous [${folder}]..."
	rm -rf "${folder}"
fi
echo "making folder [${folder}]..."
mkdir "${folder}"

echo "installing kubectl..."
# instructions for installing k8s are at:
# https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
version=$(curl --silent --location "https://dl.k8s.io/release/stable.txt")
echo "installing latest version ${version}"
executable="${folder}/kubectl"
curl --location --silent --output "${executable}" "https://dl.k8s.io/release/${version}/bin/linux/amd64/kubectl"
chmod +x "${executable}"

echo "installing minikube..."
# instructions for installing minikube are are:
# https://minikube.sigs.k8s.io/docs/start/
version="latest"
executable="${folder}/minikube"
curl --location --silent --output "${executable}" "https://storage.googleapis.com/minikube/releases/${version}/minikube-linux-amd64"
chmod +x "${executable}"

echo "adding ~/binaries to your PATH"
echo "export PATH=\"\${HOME}/binaries:\${PATH}\"" >> ~/.bashrc
