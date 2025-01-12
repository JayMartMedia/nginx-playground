#!/bin/sh
SCRIPT_DIR=$(dirname ${BASH_SOURCE[0]})

echo "Stopping all NGINX example containers...";

# Runs stop.sh in each directory
find $SCRIPT_DIR/.. -type f -name "stop.sh" -exec {} \;

# Stop the micro express
$SCRIPT_DIR/stop-multiple-micro-express.sh
