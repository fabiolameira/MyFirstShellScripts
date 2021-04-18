# !/bin/bash
# This script list all .sh files in the given directory name, and save the names into "2.03-FoundScripts.txt":
filenames=`ls -a "$1"*.sh | sort`

for entry in $filenames
do
    echo ${entry^^} >> 2.03-FoundScripts.txt
done
