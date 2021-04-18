#!/bin/bash
# This script verify if provided number is a prime number or not:
echo "Enter any positive integer number:"
read number

if [[ $number != ?(-)+([0-9]) ]]
then
    echo "$number is not integer"
    exit
fi

if [ $number -lt 0 ]
then
    echo "$number is negative!"
    exit
fi

for((i=2; i<=$number/2; i++))
do
    if [ $(($number%i)) -eq 0 ]
    then
        echo "$number is not a prime number!"
        exit
    fi
done
echo "$number is a prime number!"
