#!/bin/bash

arr=( 1 2 3 4 5 6 7 8 9 10 )
for i in ${arr[@]}
do 
	if [ $i = 5 ]
	then 
		break
	else
		echo $i
	fi
done


