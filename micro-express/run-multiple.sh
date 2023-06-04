#!/bin/bash
docker run -d -p 5000:3000 --name 000 -e MESSAGE="Hello from instance #000" -e INSTANCE_ID="000" micro-express
docker run -d -p 5001:3000 --name 001 -e MESSAGE="Hello from instance #001" -e INSTANCE_ID="001" micro-express
docker run -d -p 5002:3000 --name 002 -e MESSAGE="Hello from instance #002" -e INSTANCE_ID="002" micro-express
docker run -d -p 5003:3000 --name 003 -e MESSAGE="Hello from instance #003" -e INSTANCE_ID="003" micro-express
