#!/bin/bash

#Modificar p1e14 para que indique si se trata de un fichero, archivo especial, enlace simbolico etc

if [[ -e $1 ]]; then
	if [[ -d $1 ]]; then
		echo "$1 existe y es un directorio"
	elif [[ -h $1 ]]; then
		echo "$1 es un enlace simbólicio"
	elif [[ -b $1 ]]; then
		echo "$1 es un archivo especial de bloque"
	elif [[ -c $1 ]]; then
		echo "$1 es un archivo especial de caracter"
	else
		echo "$1 es un fichero"
	fi
else
	echo "$1 no existe"
fi
