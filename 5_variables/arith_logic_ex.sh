#!/bin/bash
	((4==4)); echo $?
	((4!=4)); echo $?
	((3<4 && 4!=4)); echo $?
	((A= 4==4+4)); echo $A
