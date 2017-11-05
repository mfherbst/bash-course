#!/bin/bash
VAR="some super long string"
SE_PAT="s*e"
R_PAT="?r"
REPLACEMENT="FOOOO"

# the longest match is replaced:
echo ${VAR/$SE_PAT/$REPLACEMENT}
echo ${VAR/$R_PAT/$REPLACEMENT}

# all matches are replaced
echo ${VAR//$R_PAT/$REPLACEMENT}
