#!/bin/bash
echo "enter a pattern"
read s
echo "enter a string"
read s1

if [ "$s" = "$s1" ]
then
	echo "pattern matched"
else
	echo "pattern not matched"
fi
