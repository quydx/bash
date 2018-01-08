#!/bin/bash
read -p "Nhap sau: " string
upper_count=0
lower_count=0
for (( i=0; i<${#string}; i++))
do
    val=${string:$i:1}
    if [[ "$val" =~ [A-Z] ]] 
    then
	((upper_count++))
    elif [[ "$val" =~ [a-z] ]]
    then
	((lower_count++))
    fi
done
echo "UPPER: $upper_count"
echo "LOWER: $lower_count"
