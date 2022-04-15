#!/bin/bash

echo 'creating consul cluster... '
kind create cluster --name consul --config=../kind-config/kind-config.yaml
kind create cluster --name consul --image kindest/node:v1.19.16 --config=../config/kind-cluster-config.yaml
curl -sL https://run.linkerd.io/emojivoto.yml | kubectl apply -f -
docker stop $(docker ps -a -q -f name="consul-control-plane")


