#!/bin/bash

ARG="foo"
VAL="bar"
COMMENT="Some crazy comment"

# here we run code to determine the values of 
# ARG, VAL, COMMENT

# store it for later usage in a more compact form
STORAGE="$ARG+$VAL+$COMMENT"

# ...

# unpack it again
OIFS=$IFS
IFS="+"
echo "$STORAGE" | {
	read ARG VAL COMMENT
	echo "The argument was $ARG"
	echo "The value was $VAL"
	echo "The comment was $COMMENT"

} # see next chapter why we need the { ... }
# ignore it for now
IFS=$OIFS
