#!/bin/bash
TMP=$(mktemp)  # create temporary file

# define the cleanup routine
cleanup() {
	echo cleanup called
	rm $TMP
}
# make cleanup be called WHENEVER the shell exits
trap cleanup EXIT

# add some stuff to it
echo "data" >> "$TMP"

##
#  many lines of code
##

# and now we forgot about the teporary file
if [ "$CONDITION" != "true" ]; then
	exit 0
fi

##
#  many more lines of code
##

#no need to do explicit cleanup
