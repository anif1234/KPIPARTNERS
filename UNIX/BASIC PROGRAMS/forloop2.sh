#!/bin/bash

#v=$((2 % 2))
#echo $v

echo "enter a num ?"
read n
if [ $(($n % 2)) -eq 0 ] && [ $n -lt 50 ]
then
	echo "even and lesserthan 50"
else
	echo "odd and greater than 50"
fi
