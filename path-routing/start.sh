#!/bin/bash
SCRIPT_DIR=$(dirname ${BASH_SOURCE[0]})
docker build -t nginx-path-routing $SCRIPT_DIR
docker run -d -p 8000:80 --name nginx-path-routing nginx-path-routing
