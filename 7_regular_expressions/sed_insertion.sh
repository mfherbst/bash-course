#!/bin/bash

{ 
	echo blub
	echo blbl
} | sed '/bl/a11111'

echo ------

{ 
	echo blub
	echo blbl
} | sed '/bl/i11111'
