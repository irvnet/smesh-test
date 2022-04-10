#!/bin/bash

echo 'creating consul cluster... '
kind create cluster --name consul --config=../kind-config/consul-config.yaml
curl -sL https://run.linkerd.io/emojivoto.yml | kubectl apply -f -
docker stop $(docker ps -a -q -f name="consul-control-plane")


