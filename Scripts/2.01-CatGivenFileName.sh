# !/bin/bash
# This script shows the content of a file:
fileContent=$( cat $1 )

if [  -z "$fileContent"  ] 
then
    echo "File don't exist"
else
    echo "$fileContent"
fi
