#!/bin/bash

#Solicita un nº y dice si es par o impar

read -p "Introduce un nº: " n
	if (( $n % 2 != 0 )); then
		echo "El nº introducido es impar"
	else
		echo "El nº introducido es par "
	fi
