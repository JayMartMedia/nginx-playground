#!/bin/bash

echo "This test sets the host header by using the -H flag, this is only needed since DNS isn't set up to point the domains at your computer. If the domains actually existed and returned A records pointing at your server then you could just run 'curl local.testing.com' and the host header would automatically be set to 'local.testing.com'. You could by a domain and add an A record, or add an entry to your hosts file pointing at 127.0.0.1 in order to simulate this, but that is outside the scope of this video."; echo;

echo "Sending request to default server (instance 000) as the fallback"
echo "Test yourself by running: 'curl -s http://localhost:8000'"
curl -s http://localhost:8000; echo;
curl -s http://localhost:8000/endpoint; echo; echo;

echo "Sending request to example.com (instance 001) by setting host header"
echo "Test yourself by running: 'curl -H \"host: example.com\" -s http://localhost:8000'"
curl -H "host: example.com" -s http://localhost:8000; echo;
curl -H "host: example.com" -s http://localhost:8000/endpoint; echo; echo;

echo "Sending some requests to local.testing.com (instance 002) by setting host header"
echo "Test yourself by running: 'curl -H \"host: local.testing.com\" -s http://localhost:8000'"
curl -H "host: local.testing.com" -s http://localhost:8000; echo;
curl -H "host: local.testing.com" -s http://localhost:8000/endpoint; echo; echo;

echo "Sending some requests to default server (instance 000) as fallback"
echo "Test yourself by running: 'curl -H \"host: unknown.name.com\" -s http://localhost:8000'"
curl -H "host: unknown.name.com" -s http://localhost:8000; echo;
curl -H "host: unknown.name.com" -s http://localhost:8000/endpoint; echo; echo;
