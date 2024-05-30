# Using HELM

* Install helm. Use [this link](https://helm.sh/docs/intro/install/)

* Make sure you have Minikube running.

* Use helm to install MySQL using helm as described [here](https://bitnami.com/stack/mysql/helm)

* Demonstrate that you can access your newly running MySQL server.

* here is how to install helm:

```bash
function _install_helm() {
        rm -f "${HOME}/install/binaries/helm" /tmp/get_helm.sh
        curl -fsSL -o /tmp/get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
        chmod +x /tmp/get_helm.sh
        HELM_INSTALL_DIR="${HOME}/install/binaries" /tmp/get_helm.sh --no-sudo
        rm -f /tmp/get_helm.sh
}
```
