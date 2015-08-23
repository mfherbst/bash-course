#!/bin/bash

ABC=abcdef
NUM=123
EXAMPLE="$ABC$NUM$(date) next"
EXAMPLE2='$ABC$NUM$(data)'
echo "$EXAMPLE"
echo "\"some other example: " $EXAMPLE2

CODE="echo"
CODE="$CODE 'test'"
$CODE
