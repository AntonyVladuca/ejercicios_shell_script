#!/bin/bash

#Estádisticas de nº ficheros y nº subdirectorios de un directorio pasado como parámetro

if [[ -d $1 ]]; then 
	echo "Nº de archivos:" 
	find $1 -type f | wc -l
	echo ""
	echo ""
	echo "Nº subdirectorios:"
	find $1 -type d | wc -l
else
	echo "$1 no existe"
fi
