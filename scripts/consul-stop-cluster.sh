#!/bin/bash

echo 'stopping consul cluster... '
docker stop $(docker ps -a -q -f name="consul-control-plane")
