#!/bin/bash

echo "Sending request to instance 000 on / and /endpoint"
echo "Test yourself by running: 'curl -s http://localhost:8000'"
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000/endpoint; echo; echo;

echo "Sending request to instance 001 on /instance-001 and /instance-001/endpoint"
echo "Test yourself by running: 'curl -s http://localhost:8000/instance-001/'"
curl -s http://localhost:8000/instance-001/; echo;
curl -s http://localhost:8000/instance-001/endpoint; echo; echo;

echo "Sending request to instance 002 on /instance-002 and /instance-002/endpoint"
echo "Test yourself by running: 'curl -s http://localhost:8000/instance-002/'"
curl -s http://localhost:8000/instance-002/; echo;
curl -s http://localhost:8000/instance-002/endpoint; echo; echo;
