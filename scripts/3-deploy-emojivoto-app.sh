#!/bin/bash

# deploy emojivoto sample app
curl -sL https://run.linkerd.io/emojivoto.yml | kubectl apply -f -

