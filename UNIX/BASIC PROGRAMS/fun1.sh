#!/bin/bash
echo "enter a string"
read s
echo "enter a string"
read s1
fun() {
	echo "$s $s1"
}
fun $s $s1
