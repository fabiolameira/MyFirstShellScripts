#!/bin/bash
# This script verify if provided letter is an vowel or an consonant:
echo "Enter any letter:"
read letter

if [ $letter == "a" ] || [ $letter == "A" ] ||
   [ $letter == "e" ] || [ $letter == "E" ] ||
   [ $letter == "i" ] || [ $letter == "I" ] ||
   [ $letter == "o" ] || [ $letter == "O" ] ||
   [ $letter == "u" ] || [ $letter == "U" ]; then
    echo "Vowel!"
elif [ ${#letter} -gt 1 ]; then
    echo "More than one letter!"
else
    echo "Consonant!"
fi
