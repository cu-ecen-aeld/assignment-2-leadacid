#!/bin/bash

#checking num of args
if [ ! $# -eq 2 ]
then

	echo "unspecified num of parameters"
	#exit with value 1 error
	exit 1

fi

# Accepting 1st arg
writefile=$1

# Accepting 2nd arg
writestr=$2


# Creating path for the dir
mkdir -p $(dirname $writefile)

# Creating new file in the dir
touch $writefile 

# Verifying is file creared
if [ -f $writefile ]	
	then
		echo "$writestr" > "$writefile"
		#exit with value 0
		exit 0
	else
		echo "File Not Created"
		#exit with value 1 error
		exit 1

fi
