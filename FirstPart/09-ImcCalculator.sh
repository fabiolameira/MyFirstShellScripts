# !/bin/bash
# This script calculates the IMC from a given weight & height;
echo "Insert an Height in m (Ex: 1.70):"
read height

echo "Insert an Height in Kg (Ex: 65.0):"
read weight

imc=`bc << EOF
scale=4
$weight / ($height * $height) 
EOF`

underWeight=$(echo "$imc<=18.5" | bc)
normal=$(echo "$imc<=24.9" | bc)
overWeight=$(echo "$imc<=29.9" | bc)
obesityClassI=$(echo "$imc<=34.9" | bc)
obesityClassII=$(echo "$imc<=39.9" | bc)

if [ $underWeight -eq 1 ]
then 
    echo "Your IMC is: $imc - You're underweight."
elif [ $normal -eq 1 ]
then 
    echo "Your IMC is: $imc - You're healthy."
elif [ $overWeight -eq 1 ]
then 
    echo "Your IMC is: $imc - You're overweight."
elif [ $obesityClassI -eq 1 ]
then
    echo "Your IMC is: $imc - You're obese in class I."
elif [ $obesityClassII -eq 1 ]
then
    echo "Your IMC is: $imc - You're obese in class II."
else
    echo "Your IMC is: $imc - You're obese in class III."
fi
