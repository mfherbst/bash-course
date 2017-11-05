#!/bin/bash
# Default logging function
log() { echo "$@"; }

if [ "$1" == "--quiet" ]; then
	# Empty logging function:
	# Works since ":" is the idle command doing exactly nothing
	log() { :; }
fi

# Log something ... or not
log Hello and welcome to this script!
