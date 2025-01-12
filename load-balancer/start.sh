#!/bin/bash
SCRIPT_DIR=$(dirname ${BASH_SOURCE[0]})
docker build -t nginx-load-balancer $SCRIPT_DIR
docker run -d -p 8000:80 --name nginx-load-balancer nginx-load-balancer
