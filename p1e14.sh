#!/bin/bash

#Introduce ruta completa por parámetro
#Script muestra listado no recursivo de todas las entradas e indica si es fichero o directorio
#Script muestra nº total de entradas

#No me aclaraba hacerlo ni buscando por internet así que he pedido ayuda

if [[ -n $@ ]]; then
	#no me queda claro lo que es el $@
	if [[ $# -le 1 ]]; then
		if [[ -e $1 ]]; then
echo "Ficheros dentro del directorio:"
     ls -l $1 | grep ^-
echo ""
echo ""
echo "Subdirectorios dentro del directorio"
     ls -l $1 | grep ^d
echo ""
echo ""
echo "Nº total de entradas procesadas"
     ls -l $1 | wc -l 


else
	echo "El directorio $1 no existe, introduce uno válido"
fi

else
	echo "Sólo se puede introducir 1 parámetro"
fi

else
	echo "DEBES INTRODUCIR UN PARÁMETRO"
fi
