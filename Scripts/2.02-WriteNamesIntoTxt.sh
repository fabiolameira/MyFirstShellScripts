# !/bin/bash
# This script write entered names into 2.02-WriteNamesIntoTxtResult.txt:
continue="yes"

while [ $continue == "yes" ]
do
    echo "Insert the name you want to write:"
    read name
    echo $name >> 2.02-WriteNamesIntoTxtResult.txt
    echo "Want to write another name? (yes or no)"
    read continue
done
