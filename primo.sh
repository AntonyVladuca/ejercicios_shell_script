#!/bin/bash

#Pasas nº por parámetro y dice si es primo o no

	for (( i=2; i<=$1/2; i++ ))
		do
			n=$(($1%i))
			if [[ $n -ne 0 ]]; then
				echo "$1 es un nº primo"
			else
				echo "$1 NO es un nº primo"
			fi
		done
