#!/bin/bash

echo 'creating consul cluster... '
kind create cluster --name consul --image kindest/node:v1.19.16 --config=../config/kind-cluster-config.yaml


