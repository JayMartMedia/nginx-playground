#!/bin/bash
ID=$(docker run -d -p 4999:4999 --name nginx-lb nginx-lb)
docker logs -f $ID
