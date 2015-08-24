#!/bin/bash
cd resources/matrices/
for i in *.mtx; do 
	echo $i
done

# there is no need for a file to be in pwd
for i in ../matrices/?a.mtx; do
	echo $i
done

#NOTE: Non-matching strings still contain * or ?
for i in /non?exist*ant; do
	echo $i
done
