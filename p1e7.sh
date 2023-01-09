#!/bin/bash

#Crea un script con el patrón:
#	1
#	1 2
#	1 2 3
#	1 2 3 4
#	1 2 3 4 5

n='[0-9]';
until [[ -n $num ]]
	do
	read -p "Por favor introduce un nº entero: " num
		if [[ $num =~ $n ]]; then
			for (( i=0; i<=$num; i++ ))
			do
				for (( x=1; x<=i; x++ ))
				do
					echo -e "$x \c"
				done

					echo -e "\n"
			done
		else
			echo "El nº introducido no es válido, por favor indroduzca otro."
		fi
	done

