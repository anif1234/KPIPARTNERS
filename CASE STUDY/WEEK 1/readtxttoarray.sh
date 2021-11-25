#!/bin/bash

#read text file and store it into array

arr=()

#read file by using whileloop
while read -r line;
do
	arr+=("$(echo "$line")")
done<data.txt

for i in "${arr[@]}"
do echo "$i"
done

