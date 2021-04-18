#!/bin/bash
# This script make a backup from $1 and save it in $2:
if [ ! -d "$2" ] 
then 
    echo "$( mkdir $2 )" 
fi

echo "$( cp -r $1 $2 )"
