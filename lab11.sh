#!/bin/bash

read -p "Nhap vao so nguyen duong: " n
now=$(date +"%Y-%m-%d %H:%M:%S")
echo "$now"
chdate=$(date --date="+$n days" +"%Y-%m-%d %H:%M:%S")
echo "$chdate"
