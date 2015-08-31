#!/bin/bash

mtr_read_head() {
	#$1: file name of mtx file
	# echos the first content line (including the matrix size) to stdout
	# returns 0 if all is well
	# returns 1 if an error occurred (file could not be read)

	# check we can read the file
	[ ! -r "$1" ] && return 1

	# get the data
	local DATA=$(< "$1" grep -v "%" | head -n1)

	# did we get any data?	
	if [ "$DATA" ]; then
		echo "$DATA"
		return 0
	else
		return 1
	fi
}

gcut() {
	# this a more general version of cut
	# that can be tuned using the IFS
	#
	# $1: n -- the field to get from stdin
	# return 1 on any error
	
	local n=$1
	if ((n<1)); then
		return 1
	elif ((n==1)); then
		local FIELD BIN

		# read two fields and return
		# the first we care about
		read FIELD BIN
		echo "$FIELD"
	else
		local FIELD REST	

		# discard the first field 	
		read FIELD REST

		# and call myself
		echo "$REST" | gcut $((n-1))
	fi
}

mtx_get_rows() {
	# get the number of rows in the matrix from an mtx file
	# echo the result to stdout
	# return 1 if there is an error	
	
	local DATA
	
	# read the data and return when error
	DATA=$(mtr_read_head "$1") #|| return $?
	# parse the data -> row is the first field
	echo "$DATA" | gcut 1

	# implicit return of return code of gcut
}

mtx_get_cols() {
	# get the number of columns in the matrix file
	# return 1 on any error

	local DATA
	DATA=$(mtr_read_head "$1") || return $?
	echo "$DATA" | gcut 2  #cols on field 2
}

mtx_get_nonzero() {
	# get the number of nonzero entries in the matrix file
	# return 1 on any error

	local DATA
	DATA=$(mtr_read_head "$1") || return $?
	echo "$DATA" | gcut 3  #cols on field 2
}

mtx_get_comment() {
	mtx_fill_cache "$1" && echo "$__MTX_INFO_CACHE_COMMENT"
}

#if we have been sourced this exits execution here:
# so by sourcing we can use gcut, mtx_get_rows, ...
return 0 &> /dev/null 

####################################

if [ "$1" == "-h" -o "$1" == "--help" ];then
	echo "Script to display basic information in an mtx file"
	exit 0
fi

if [ ! -r "$1" ]; then
	echo "Please specify mtx file as first arg." >&2
	exit 1
fi

echo "No rows:     $(mtx_get_rows "$1")"
echo "No cols:     $(mtx_get_cols "$1")"
echo "No nonzero:  $(mtx_get_nonzero "$1")"

exit 0
