#!/bin/bash

read -p "Nhap duong dan:" path
if [ -f $path ]; then
    N=$(cat $path | wc -l) 
    echo "File $path has N = $N lines."
    i=1
    while read line; do
	count=$(echo $line | wc -c )
	echo "Line $i has $count charaters"
	(( i++ ))
    done < $path
else 
    echo "Day khong phai duong dan hop le"
fi
