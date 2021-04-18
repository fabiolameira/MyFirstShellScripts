# !/bin/bash
# This script convert euros to dollars according to the quote entered:
echo "Enter EUR/USD quote:"
read quote
echo "Enter the value in EUR:"
read value

echo "$value EUR = $(echo $value*$quote | bc) USD"
