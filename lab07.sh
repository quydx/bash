#!/bin/bash
#fast way
echo "PATH is $1"
count=$(find $1 -type d | wc -l)
echo "TOTAL FOLDER: $(($count -1))"

#other way
count () {    
    echo "count($1)"
    for file in $(ls $1)
    do
	cfd="$1/$file"
	echo "check $cfd"
	if [ -d "$cfd" ];then
	    echo "$cfd is FOLDER"
	    ((total++))
	    count "$cfd"
	fi
    done
}
total=0
count $1
echo "TOTAL = $total"
