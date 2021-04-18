# !/bin/bash
# This script read an entered PIN card and validate if is correct:
echo "Enter your PIN:"
read pin

for ((i = 2; i > 0; i--))
do
    if [ $pin -eq 1234 ]
    then
        echo "Authorized transaction!"
        exit
    else 
        echo "Entered PIN is Incorrect, you have more $i attempts:"
        read pin
    fi
done

echo "Your card has been blocked!"
