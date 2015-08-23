#!/bin/bash
VAR="some super long string"
PATTERN="s*e"
PATTERN2="?r"
REPLACEMENT="FOOOO"

# the longest match is replaced:
echo ${VAR/$PATTERN/$REPLACEMENT}
echo ${VAR/$PATTERN2/$REPLACEMENT}

# all matches are replaced
echo ${VAR//$PATTERN2/$REPLACEMENT}
