#!/bin/bash

printer() { echo "1"; }

for((I=0;I<10;++I)); do
	printer
	printer() { echo "$I"; }
done
