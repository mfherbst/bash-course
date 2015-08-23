#!/bin/bash
if [ 1 -gt 2 ]; then echo "Cannot happen"; fi
if [ 1 -gt 2 ]; VAR=4; then echo "VAR=$VAR"; fi
if ! cd ..; then echo "Could not change directory" >&2 ; fi
echo $PWD
