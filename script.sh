#!/bin/sh

usage() {
    echo ""
    echo "Usage: ./script.sh COMMAND [CONFIG] [OPTION]"
    echo ""
    echo "Examples:"
    echo "    './script.sh start header-routing'"
    echo "    './script.sh test header-routing'"
    echo "    './script.sh stop'"
    echo "    './script.sh -h'"
    echo ""
    echo "COMMAND"
    echo "  start                 run the example"
    echo "  stop                  stop all examples"
    echo "  restart               stop all and run example (convenience script for combining stop and start)"
    echo "  test                  run a script to show example output"
    echo ""
    echo "CONFIG"
    echo "  header-routing        an example of header routing"
    echo "  host-routing          an example where requests are routed based on host"
    echo "  host-routing-header   an example where requests are routed based on host header"
    echo "  load-balancer         an example where requests are load balanced between multiple origins" 
    echo "  path-routing          an example where requests are routed based on path/subdirectory"
    echo ""
    echo "OPTION"
    echo "  -h                    display the help page (prevents other commands from running)"
    echo ""
}

# File to send "container not found" errors, send to /dev/null to hide from user since these don't actually mean anything in this case
NOT_FOUND_REDIRECT=/dev/null

hflag=false

while getopts hm:ru: flag
do
    case "${flag}" in
        h) hflag=true;;
    esac
done

if $hflag; then
    usage
    # exit early if calling help
    exit
fi

# ./stop-all.sh

# If no args
if [ -z $1 ]; then
    usage
else
    # If arg 1 is stop
    if [ "$1" == "stop" ]; then
        ./helper-scripts/stop-all.sh 2>$NOT_FOUND_REDIRECT
    # If arg 1 is start
    elif [ "$1" == "start" ]; then
        if [ -d "$2" ]; then
            ./helper-scripts/run-multiple-micro-express.sh
            echo "Starting example NGINX container...";
            ./$2/start.sh
        else
            echo "The example $2 does not exist. Run ./script.sh -h to see a list of available configuration examples."
        fi
    # If arg 1 is restart
    elif [ "$1" == "restart" ]; then
        if [ -d "$2" ]; then
            ./helper-scripts/stop-all.sh 2>$NOT_FOUND_REDIRECT
            ./helper-scripts/run-multiple-micro-express.sh
            echo "Starting example NGINX container...";
            ./$2/start.sh
        else
            echo "The example $2 does not exist. Run ./script.sh -h to see a list of available configuration examples."
        fi
    # If arg 1 is test
    elif [ "$1" == "test" ]; then
        if [ -d "$2" ]; then
            echo "Starting tests...";
            ./$2/test.sh
        else
            echo "The example $2 does not exist. Run ./script.sh -h to see a list of available configuration examples."
        fi
    fi
fi