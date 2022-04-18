 #!/bin/bash

helm repo add hashicorp https://helm.releases.hashicorp.com

kubectl create ns consul

helm upgrade --install -n consul consul hashicorp/consul --wait -f ${HOME}/smesh-test/config/consul-global-settings.yaml

