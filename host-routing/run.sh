#!/bin/bash
ID=$(docker run -d -p 4999:4999 --name nginx-hr nginx-hr)
docker logs -f $ID
