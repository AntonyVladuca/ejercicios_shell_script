#!/bin/bash
#Se le pasan como parámetros 2nº enteros y el programa me debe decir cuál es mayor
read -p "Introduce el 1r nº: " n1
read -p "Introduce el 2º nº: " n2

if [[ $n1 -gt $n2 ]]; then
	echo "$n1 > $n2"
elif [[ $n1 -lt $n2 ]]; then
	echo "$n1 < $n2"
else
	echo "$n1 = $n2"
fi


