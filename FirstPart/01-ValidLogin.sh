#!/bin/bash
# This script verify if provided username and password  is valid:
echo "Enter your username:"
read username
echo "Enter your password:"
read password

if [ $username == "bravo" ] && [ $password == "123456" ]
then
    echo "Success!"
else
    echo "Error!"
fi
