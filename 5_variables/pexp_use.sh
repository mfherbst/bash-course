#!/bin/bash

A=
B=3

echo ${B:+"B works"}
echo ${A:+"A works"}
echo ${A:-"notA: "$B}

echo ${A:="defined"}
echo ${A:+"A works"}
echo ${A:-"notA: "$B}
