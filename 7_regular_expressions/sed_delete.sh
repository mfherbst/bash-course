#!/bin/bash
{
	echo line1
	echo line2
	echo line3
} | sed '/2$/d'
