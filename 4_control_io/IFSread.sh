#!/bin/bash
# In this script we want to parse the /etc/passwd
# file where the columns of information are
# separated by : in each line.
OIFS="$IFS"
IFS=":"
echo "------------------"
while read user pw uid gid gecos home shell; do
	echo "Username:      $user"
	echo "User id:       $uid"
	echo "Group id:      $gid"
	echo "Home dir:      $home"
	echo "Default shell: $shell"
	echo "------------------"
done < /etc/passwd
IFS=$OIFS
