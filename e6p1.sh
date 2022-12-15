#!/bin/bash
#script que muestra tabla de multiplicar del parámetro

for i in 0 1 2 3 4 5 6 7 8 9 10
	do
		mult=$(($1*$i))
		echo "$1 x $i = $mult"
	done
