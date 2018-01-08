#!/bin/bash
read -p "Nhap a b c: " a b c
echo "Your pt bac 2 is ${a}x^2 + ${b}x + ${c} = 0"
if [ $a -eq 0 ];then
    if [ $b -eq 0 ];then
	if [ $c -eq 0 ];then
	    echo "PT co vo so nghiem"
	else
	    echo "PT vo nghiem"
	fi
    else
	x=$(echo "scale=2; -$c/$b" | bc -l)
	echo "Nghiem cua PT la $x"
    fi
else 
    delta=`expr $b \* $b - 4 \* $a \* $c `
    if [ $delta -lt 0 ] ; then 
	echo "Phuong trinh vo nghiem"
    elif [ $delta -eq 0 ];then
	x3=$(echo "scale=2; -$b/(2 * $a)" | bc -l) 
	echo "Phuong trinh co nghiem kep x = $x3"
    else
	x1=$(echo "scale=2; -($b + sqrt($delta))/(2*$a)" | bc -l)
	x2=$(echo "scale=2; -($b - sqrt($delta))/(2*$a)" | bc -l)
	echo "x1= $x1"
	echo "x2= $x2"
    fi
fi

