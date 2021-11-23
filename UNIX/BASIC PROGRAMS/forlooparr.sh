#!/bin/bash
nums="1 2 3 4 4 5"
for n in $nums
do
	if [ $(($n % 2)) -eq 0 ]
	then
		echo "even number: $n"
	else
		echo "odd number: $n"
	fi
done
