#!/bin/bash
#Script que comprueba si el fichero pasado por parámetro existe y si tenemos permisos de lectura
#Si hay permisos mostramos contenido

if [[ -r $1 ]]; then
	echo "El archivo existe. Este es su contenido: "
	cat $1
else
	echo "ERROR: El archivo indicado no existe!"
fi
