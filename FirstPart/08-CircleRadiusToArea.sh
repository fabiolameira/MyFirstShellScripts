# !/bin/bash
# This script convert a given circle radius to his area;
echo "Insert a circle radius in cm:"
read radius

area=$(echo "scale=2;3.14159 * ($radius * $radius)" | bc)

echo "Area of circle is $area cm2"
