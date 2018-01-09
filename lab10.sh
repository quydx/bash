#!/bin/bash

read -p "Nhap duong dan:" path
if [ -f $path ]; then
    N=$(cat $path | wc -l) 
    echo "File $path has N = $N lines."
    while read line; do
	echo $line
    done < $path
else 
    echo "Day khong phai duong dan hop le"
fi
