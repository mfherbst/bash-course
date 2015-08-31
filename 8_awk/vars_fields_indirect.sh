#!/bin/bash
echo -e "some words for\tawk to process" | awk '
	{
		v=5
		print $v
	}'
