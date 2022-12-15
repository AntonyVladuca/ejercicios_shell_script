#!/bin/bash
#script que indique si el fichero pasado por parámetro existe o no
#indicar si es fichero o directorio

error () {
	echo "La sintaxis no es correcta, utiliza: ./e3p1.sh archivo/directorio"
}
#Comprobar que existe un solo parámetro
if [[ $# -lt 1 ]]; then
	error
#Comprobar que el parámetro existe y es un directorio
elif [[ -d $1 ]]; then
	echo "$1 es un directorio"
#Comprobar que el parámetro existe y es un fichero
elif [[ -f $1 ]] ;then
	echo "$1 es un fichero"
else
echo "$1 no existe"
fi
