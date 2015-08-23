#!/bin/bash

{ 
	echo blub
	echo blbl
} | sed '/bl/alaber'

echo ------

{ 
	echo blub
	echo blbl
} | sed '/bl/ilaber'
