#!/bin/bash

# Only needed in case this script is run from root directory
SCRIPT_DIR=$(dirname ${BASH_SOURCE[0]})

# Build image and start container
docker build -t nginx-header $SCRIPT_DIR
docker run -d -p 8000:80 --name nginx-header nginx-header

