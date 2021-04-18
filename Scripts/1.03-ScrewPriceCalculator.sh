#!/bin/bash
# This script calculate screws prices according to buyed quantity:
echo "Enter how many screws yo want to buy:"
read screws
price=1.3

if [ $screws -gt 12 ]; then
    price=1
fi

echo "Price per Screw: $price €"
echo "Total price: $(echo $price*$screws | bc) €"
