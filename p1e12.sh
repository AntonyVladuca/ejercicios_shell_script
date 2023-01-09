#!/bin/bash

#Mostrar menú y pedir opción

function numeros () {
	read -p "Introduce el 1r nº" num1
	read -p "Introduce el 2º nº" num2
}

opcion=1
until [[ $opcion -eq 0 ]];
do
	echo "Elige que hacer con los números que introduciras posteriormente:"
	echo "1. Sumar"
	echo "2. Restar"
	echo "3. Multiplicar"
	echo "4. Dividir"
	echo "0. ---Salir---"

	read -p "¿Qué quieres hacer?" opcion

	case $opcion in
	1)
		numeros
		((res=num1+num2))
		echo "$num1 + $num2 = $res"
	;;
	2)
		numeros
		((res=num1-num2))
		echo "$num1 - $num2 = $res"
	;;
	3)
		numeros
		((res=num1*num2))
		echo "$num1 * $num2 = $res"
	;;
	4)
		numeros
		((res=num1/num2))
		echo "$num1 / $num2 = $res"
	;;
	0)
		echo "Saliendo"
	;;
	*)
		echo "Inválido, introduce un nº del 0 al 4."
	;;
	esac
done

