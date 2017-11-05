#!/bin/bash
# Typically functions defined at the top and
# global code at the bottom

readfct() {
	# Read two lines from stdin
	read test
	read test2

	# Write them to stdout
	echo "Your input:"
	echo $test2 $test
}

log_error() {
	# Write to stderr only
	echo "ERROR: Something bad happened!" >&2
}

# Still see the error, since only stdout redirected
log_error >/dev/null

# Pipe to/from a function
{
	echo line1
	echo line 2
} | readfct | grep 2
