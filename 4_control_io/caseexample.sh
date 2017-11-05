#!/bin/bash
VAR=$@      # VAR assigned to all arguments
case $VAR in
   a)   echo "VAR is \"a\""
        ;;  #<- do not omit these
   l*)  echo "VAR starts with l"
        ;;
   l?)  echo "VAR is l and something"
        echo "Never matched"
        # because it is more speciffic
        # than pattern l* above
        ;;
   $1)  echo "VAR is \$1"
        # i.e. there is none or only one arg
        # because exaclty then $1 == $@
        ;;	
   *)   echo "VAR is something else"
        ;;
esac
