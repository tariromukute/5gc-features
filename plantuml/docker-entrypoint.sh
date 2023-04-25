#!/bin/bash

commands="config-help,generate,batch,help,list,meta,validate,version"

if [ $# == 0 ]; then
	echo "No command specified. Available commands:"
	for i in $(echo $commands | sed "s/,/ /g")
	do
		echo "  $i"
	done
	exit
fi

if [[ $# -gt 0 ]]; then
    # If CLI jar does not exist, and $1 is a known CLI command, build the CLI jar and run that command.
    command=$1
    shift
    echo "Running java -jar plantuml.jar "${command}" "$@""
    exec java -jar plantuml.jar "${command}" "$@"
else
    # Pass args as linux commands. This allows us to do something like: docker run -it (-e…, -v…) image ls -la
    exec "$@"
fi