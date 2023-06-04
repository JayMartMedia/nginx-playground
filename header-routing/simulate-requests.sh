#!/bin/bash
# using echo to insert new lines

echo "Sending some requests to default server by adding no headers"
curl -s http://localhost:4999; echo;
curl -s http://localhost:4999; echo;
curl -s http://localhost:4999; echo;
curl -s http://localhost:4999; echo;
curl -s http://localhost:4999; echo;

echo "Sending some requests to server \"a\" by adding x-server-select header set to \"a\""
curl -H "x-server-select: a" -s http://localhost:4999; echo;
curl -H "x-server-select: a" -s http://localhost:4999; echo;
curl -H "x-server-select: a" -s http://localhost:4999; echo;
curl -H "x-server-select: a" -s http://localhost:4999; echo;
curl -H "x-server-select: a" -s http://localhost:4999; echo;

echo "Sending some requests to server \"b\" by adding x-server-select header set to \"b\""
curl -H "x-server-select: b" -s http://localhost:4999; echo;
curl -H "x-server-select: b" -s http://localhost:4999; echo;
curl -H "x-server-select: b" -s http://localhost:4999; echo;
curl -H "x-server-select: b" -s http://localhost:4999; echo;
curl -H "x-server-select: b" -s http://localhost:4999; echo;
