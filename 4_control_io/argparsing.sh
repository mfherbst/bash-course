#!/bin/bash
# assume we allow the arguments -h, -f and --show
# assume further that after -f there needs to be a 
# filename following
# 
FILE=default_file   # default if -f is not given
while [ "$1" ]; do  # are there commandline arguments left?
   case "$1" in     # deal with current argument
      -h|--help)  echo "-h encountered"
                  ;;
      # it is common to have "long" and "short" options
      -f|--file)  shift # access filename on $1
                  echo "-f encountered, file: $1"
                  FILE=$1
                  ;;
      --show)     echo "--show encountered"
                  ;;
      *)          echo "Unknown argument: $1" >&2
                  exit 1
   esac
   shift # discard current argument
done
