#!/bin/bash
< resources/matrices/3.mtx read COMMENT MTX FLAGS
echo "com:   $COMMENT"
echo "mtx:   $MTX"
echo "flags: $FLAGS"
