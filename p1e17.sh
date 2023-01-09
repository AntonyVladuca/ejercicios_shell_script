#!/bin/bash

#Script copia un archivo indicado como 1r parámetro
#Script pone el nombre a la copia como se indica en 2º parámetro

if [[ $# -eq 2 ]]; then #obligatorio 2 parámetros
	if [[ -f $1 ]]; then #archivo existe
		if [[ ! -f $2 ]]; then #el nombre indicado no existe
			cp $1 $2
		else
			echo "El nombre $2 ya existe, introduce otro"
		fi
	else
		echo "el archivo $1 no existe, introduce un archivo válido"
	fi
else
	echo "hay que introducir 2 parámtros"
fi
