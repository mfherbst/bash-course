#!/bin/bash
< resources/matrices/3.mtx grep -v "%" | { 
	read ROW COL ENTRIES
       	echo "Number of rows:      $ROW"
       	echo "Number of cols:      $COL"
	echo "Number of entries:   $ENTRIES"
	echo "List of all entries:"
	while read ROW COL VAL; do
		echo "   M($ROW,$COL) = $VAL"
	done
}
