#!/bin/bash
TMP=$(mktemp)  # create temporary file

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

#cleanup
rm $TMP
