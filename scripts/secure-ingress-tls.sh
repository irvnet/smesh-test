#!/bin/bash

## check that the service is running
curl -s -o /dev/null -w "Upstream Response Code: %{http_code}\n" http://localhost/

## generate self-signed certificates for TLS config
mkdir -p ~/work
openssl rand -out ~/work/.rnd -writerand ~/work/.rnd

## generate private key
openssl req -x509 -newkey rsa:4096 -keyout ~/work/key.pem -out ~/work/cert.pem -subj '/CN=ambassador-cert' -nodes

## add certs to a k8s secret
kubectl create secret -n ambassador tls tls-cert --cert=${HOME}/work/cert.pem --key=${HOME}/work/key.pem



