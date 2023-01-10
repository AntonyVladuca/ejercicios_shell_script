#!/bin/bash

#por argumentos
#reiniciar ahora o reiniciar dentro de N minutos (si no se indica tiempo ofrecer opciones)

if [[ $1 -eq null ]]; then
	echo "--------------MENÚ--------------"
	echo " 1. Reiniciar ahora             "
	echo " 2. Reiniciar en X minutos      "
	echo ""
	echo "*Pon las opciones por parámetro "
	echo "**La X es equivalente al segundo"
	echo "----------CIERRE MENÚ-----------"
else
	case $1 in
	1)
		reboot now
	;;
	2)
		shutdown -r $2
	;;
	*)
		echo "Parámetro inválido, hay que introducir 1 o 2"
	;;
	esac
fi
