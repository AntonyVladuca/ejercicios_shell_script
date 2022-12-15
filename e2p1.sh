#!/bin/bash
#pide 2 números como parámetros al usuario
#si no son pasados = error
#Mensaje indicando la forma de ejecutar el script

function syntax () {
	echo "La sintaxis correcta es la siguiente:"
	echo "./e2p1.sh parámetro1 + parámetro2"
	echo ""
	echo "Después de introducir los parámetros el script hará la suma entre ellos"
	echo "Los parámetros han de ser números enteros y positivos."
}

function error () {
	echo "[ERROR] - $1"
	syntax
	exit 1
}

#Comprobar que se han pasado SOLO 3 parámetros
if [ $# -ne 3 ]; then
	error "Se deben proporcionar los 3 parámetros necesarios (parámetros $#)"
fi

#Asignar valores
p1=$1
suma=$2
p2=$3

#Realizar script
case $suma in
	+) echo $[$p1+$p2]
	;;
	*) error "El operando $suma es desconocido por el script"
	;;
esac
