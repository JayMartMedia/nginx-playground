#!/bin/bash
# using echo to insert new lines

echo "Sending requests to default server by adding no headers"
echo "Test yourself by running: 'curl -s http://localhost:8000'"
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000/endpoint; echo; echo;

echo "Sending requests to server \"a\" by adding x-server-select header set to \"a\""
echo "Test yourself by running: 'curl -H \"x-server-select: a\" -s http://localhost:8000'"
curl -H "x-server-select: a" -s http://localhost:8000; echo;
curl -H "x-server-select: a" -s http://localhost:8000/endpoint; echo; echo;

echo "Sending requests to server \"b\" by adding x-server-select header set to \"b\""
echo "Test yourself by running: 'curl -H \"x-server-select: b\" -s http://localhost:8000'"
curl -H "x-server-select: b" -s http://localhost:8000; echo;
curl -H "x-server-select: b" -s http://localhost:8000/endpoint; echo; echo;
