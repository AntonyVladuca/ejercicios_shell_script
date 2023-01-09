#!/bin/bash

#Juego de adivinar nº
#Acaba cuando usuario se rinde o acierta
#Usuario se rinde si introduce 0

n=1

adivina=$(shuf -i 1-100 -n1)
while [[ $n -ne 0 ]]
do
	read -p "Introduce un nº para tu primer intento: "
	if [[ $adivina -lt $n ]]; then
		echo "Incorrecto. Prueba un nº por debajo del anterior"
	elif [[ $adivina -gt $n ]]; then
		echo "Incorrecto. Quizás sea un nº mayor"
	elif [[ $adivina -eq $n ]]; then
		echo "Enhorabuena. Lo has acertado"
	fi
done

