#!/bin/bash
if [ ! $# -eq 2 ]
then
	echo "unspecified num of parameters"
	exit 1
fi

writefile=$1
writestr=$2
 mkdir -p $(dirname $writefile)
touch $writefile 
if [ -f $writefile ]	
then
	echo "$writestr" > "$writefile"
	exit 0
fi
