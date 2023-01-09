#!/bin/bash

#Pedir un nombre de usu por parámetro y decir si está en el sistema
#También decir si ha iniciado sesión

usu='lastlog | grep $1 | cut -d " " -f1'
ini='last | grep $1 | cut -d " " -f1 | head -1'

for i in $usu
	do
		if [[ $usu == $1 ]]; then
			echo "$1 se puede encontrar en el sistema"
			for n in $ini
				do
					echo "$n ha iniciado sesión"
				done
		fi
	done
if [[ $usu != $1 ]]; then
	echo "El usuario no existe"
fi
