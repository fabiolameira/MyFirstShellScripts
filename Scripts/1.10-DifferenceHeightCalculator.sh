# !/bin/bash
# This script calculates how many years is necessary to one person get taller than another:

echo "Enter the height of the shortest person:"
read shortHeigth
echo "Enter how many centimeters the shortest person grow by year:"
read shortGrowing
echo "Enter the height of the tallest person"
read tallestHeigth
echo "Enter how many centimeters the tallest person grow by year:"
read tallestGrowing

if [ $shortHeigth -gt $tallestHeigth ]
then
    echo "The shortest person can't be taller than the taller person."
    exit
fi

if [ $shortGrowing -lt $tallestGrowing ]
then
    echo "The shortest person need to grow more centemeters by year the the taller person."
    exit
fi

year=1
while [ $shortHeigth -lt $tallestHeigth ]
do
    let shortHeigth=$((shortHeigth + shortGrowing))
    let tallestHeigth=$((tallestHeigth + tallestGrowing))
    let year++
done

echo "The shortest person need $year years to get taller than the tallerPerson."
