#!/bin/bash
ID=$(docker run -d -p 4999:4999 --name nginx-headr nginx-headr)
docker logs -f $ID
