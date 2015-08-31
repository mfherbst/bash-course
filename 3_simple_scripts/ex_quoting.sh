#!/bin/bash
# script to extract some information from directories
# $1: additional keyword to search for
#
cd Top Dir
ADDITIONAL=$(<output grep $1)
IMPORTANT=$(<output grep -i important)
cd Lower
FILE=$(<out1 grep -H $1; <out2 grep -H $2)
COUNT=$(echo '$FILE' | wc -l)

echo results:
echo "   important messages:" $IMPORTANT
echo '   other messages: $ADDITIONAL'
echo we found $COUNT more findings in
echo $FILE
