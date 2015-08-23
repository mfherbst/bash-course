#!/bin/bash
echo "some words for awk to process" | awk '
	{
		v=5
		print $v
	}'
