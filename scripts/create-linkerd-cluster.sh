#!/bin/bash

echo 'creating linkerd cluster... '
kind create cluster --name linkerd --image kindest/node:v1.19.16 --config=../config/kind-cluster-config.yaml


