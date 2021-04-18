#!/bin/bash
# This script find if a given username exists:
echo "Enter the username you want to find:"
read username

exists=$( cat /etc/passwd | grep $username | sed -e 's/:.*//g' )

if [ ! -z "$exists" ]
then
    echo "User exists!"
else
    echo "User does not exist!"
fi
