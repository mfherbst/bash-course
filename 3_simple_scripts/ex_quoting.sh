#!/bin/bash
# Script to extract matching lines from a few project
# gutenberg books and show the results
# $1: Keyword to search for
#
cd resources
ILLIAD=$(<Project Gutenberg selection/The Iliad.txt grep -i $1)
YELLOW=$(<Project Gutenberg selection/The Yellow Wallpaper.txt grep -i $1)

cd Project Gutenberg selection
OTHERS=$(<Dracula.txt grep -H $1; <The Count of Monte Cristo.txt grep -H $1)
COUNT=$(echo '$OTHERS' | wc -l)

echo Searching for the keyword $1:
echo "   Illiad:" $ILLIAD
echo '   Yellow Wallpaper: $YELLOW'
echo We found $COUNT more findings in
echo $OTHERS
