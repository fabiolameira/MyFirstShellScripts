# !/bin/bash
# This script print all even numbers before an entered number:
echo "Enter your MAX number:"
read max

if [[ $max != ?(-)+([0-9]) ]]
then
    echo "$max is not integer"
    exit
fi

if [ $max -lt 0 ]
then
    echo "$max is negative!"
    exit
fi

for ((counter = 0; counter <= $max; counter += 2))
do
    echo "$counter"
done
