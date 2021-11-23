#!/bin/bash

echo "array of lements"
read line
arr=(${line})
for i in ${arr[@]}
do
	echo $i
done
