#!/bin/bash

read -p "Nhap vao so nguyen duong: " n
now=$(date +"%D %T")
echo "$now"
chdate=$(date --date="+$n days" +"%D %T")
echo "$chdate"
