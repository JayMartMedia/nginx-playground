#!/bin/bash
echo "This tests shows how the load balancer balances requests between 3 origin servers. Then it takes an origin server down and shows how requests no longer go to the inaccessible server. Then it restarts the origin servers and shows how requests again go to all 3 origin servers."; echo;

echo "Test yourself by running: 'curl -s http://localhost:8000'";
echo "Remove an origin server by running: 'docker kill 000' (or 001, 002)";
echo "Restart an origin server by running: 'docker start 000' (or 002, 002)"; echo;

# Sleep so above messages don't IMMEDIATELY scroll away (they still scroll away quickly).
sleep 2;

echo "Sending 18 requests and load balancing between 000, 001, 002"
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000/endpoint; echo;
curl -s http://localhost:8000/endpoint; echo;
curl -s http://localhost:8000/endpoint; echo;
curl -s http://localhost:8000/endpoint; echo;
curl -s http://localhost:8000/endpoint; echo;
curl -s http://localhost:8000/endpoint; echo;
curl -s http://localhost:8000/endpoint; echo;
curl -s http://localhost:8000/endpoint; echo;
curl -s http://localhost:8000/endpoint; echo; echo;

echo "Taking down 001 and 002"
docker kill 001 002;

echo; echo "Running 18 more requests, all should go to 000 since 001 and 002 are down"
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000/endpoint; echo;
curl -s http://localhost:8000/endpoint; echo;
curl -s http://localhost:8000/endpoint; echo; echo;

echo "Restarting 001 and 002"
docker start 001 002;

echo; echo "Running 30 more requests, should eventually send requests to 001 and 002 once they come back up"
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000/endpoint; echo;
curl -s http://localhost:8000/endpoint; echo;
curl -s http://localhost:8000/endpoint; echo;
curl -s http://localhost:8000/endpoint; echo;
curl -s http://localhost:8000/endpoint; echo;
curl -s http://localhost:8000/endpoint; echo;
curl -s http://localhost:8000/endpoint; echo;
curl -s http://localhost:8000/endpoint; echo;
curl -s http://localhost:8000/endpoint; echo;
