#!/bin/bash
VAR="some super long string"
LEN=${#VAR}

# remove first and last word:
echo ${VAR:4:LEN-10}

# since parameter expansion is allowed
# in arithmetic expressions
echo ${VAR:2+2:${#VAR}-10}
