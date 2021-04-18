# !/bin/bash
# This script write in "2.09-ModifiedFiles.txt":
echo "$( find $1 -newermt "-24 hours" -ls >> 2.09-ModifiedFiles.txt )"
