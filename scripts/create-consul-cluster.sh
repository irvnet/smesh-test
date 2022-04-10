#!/bin/bash

echo 'creating consul cluster... '
kind create cluster --name consul --config=../kind-config/kind-config.yaml
curl -sL https://run.linkerd.io/emojivoto.yml | kubectl apply -f -
./emissary-config.sh
docker stop $(docker ps -a -q -f name="consul-control-plane")


