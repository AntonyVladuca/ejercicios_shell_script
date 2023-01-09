#!/bin/bash

#Crear script con el siguiente patrón:

#	1
#	2 2
#	3 3 3
#	4 4 4 4
#	5 5 5 5 5

n='[0-9]';
until [[ -n $n ]]
	do
	read -p "Introduce un nº: " num
	if [[ $num =~ $n ]]; then
		for (( i=1; i<=$num; i++ ))
			do
				for (( x=1; x<=i; x++ ))
				do
					echo -e "$i \c"
				done
					echo -e "\n"
			done
		else
			echo "El nº introducido no es válido, por favor introduce otro."
		fi
	done
