#!/bin/bash

echo "Starting example micro-express containers...";

docker run -d -p 7000:3000 --name 000 -e MESSAGE="Hello from instance #000" -e INSTANCE_ID="000" jaymartmedia/micro-express:0.0.1
docker run -d -p 7001:3000 --name 001 -e MESSAGE="Hello from instance #001" -e INSTANCE_ID="001" jaymartmedia/micro-express:0.0.1
docker run -d -p 7002:3000 --name 002 -e MESSAGE="Hello from instance #002" -e INSTANCE_ID="002" jaymartmedia/micro-express:0.0.1
