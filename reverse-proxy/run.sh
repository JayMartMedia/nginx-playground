#!/bin/bash
ID=$(docker run -d -p 4999:4999 --name nginx-rp nginx-rp)
docker logs -f $ID
