#!/bin/bash

echo 'starting consul cluster... '
docker start $(docker ps -a -q -f name="consul-control-plane")
