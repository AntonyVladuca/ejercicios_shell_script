#!/bin/bash

#Crea script q vaya sumando todos los nº que introduzcas hasta que pares
#Se para con 0

num=1
res=0

until [[ $num -eq 0 ]]; do
	clear
	read -p "introduce que nº quieres sumar al resultado anterior ($res)" num
	echo -e " $res + $num = \c "
	((res=$res+$num))
	echo e "$res\n"
done
