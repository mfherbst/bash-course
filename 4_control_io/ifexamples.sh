#!/bin/bash
if [ 1 -gt 2 ]; then echo "Cannot happen"; fi
if [ 1 -gt 2 ]; true; then echo "Will always be true"; fi
if ! cd ..; then echo "Could not change directory" >&2 ; fi
echo $PWD
