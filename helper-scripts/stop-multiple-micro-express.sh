#!/bin/bash
echo "Stopping example micro-express containers...";

docker kill 000
docker kill 001
docker kill 002

docker rm 000
docker rm 001
docker rm 002
