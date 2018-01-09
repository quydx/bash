#!/bin/bash

read -p "Nhap a: " a
read -p "Nhap b: " b
echo "PHUONG TRINH : ${a}x + ${b} = 0"
if [ $a -eq 0 ];then
    if [ $b -eq 0 ];then
	echo "Phuong trinh vo so nghiem"
    else
	echo "Phuong trinh vo nghiem"
    fi
else
    x=$(echo "scale=2; -$b/$a" | bc -l)
    echo "Phuong trinh co nghiem x = $x"
fi
