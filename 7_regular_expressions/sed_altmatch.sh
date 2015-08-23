#!/bin/bash
VAR="/some"
echo "/some/crazy/some/path" | sed "s#$VAR#/mORe#g"
echo "--"
echo "/some/crazy/path" | sed "\#crazy#d"
echo "--"
