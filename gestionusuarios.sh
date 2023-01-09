#!/bin/bash

#alta o baja de usuarios
#alta --> aluXXYYZ donde XX primeras 2 letras del apellido 1 YY del apellido 2 y Z inicial del nombre
#si no indicas grupo se crea uno con el mismo indicativo

#baja


#Syntax: ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]

nom=$2
cut_nom="${nom:0:1}" ; echo "${cut_nom}" > /dev/null

ap1=$3
cut_ap1="${ap1:0:2}" ; echo "${cut_ap1}" > /dev/null

ap2=$4
cut_ap2="${ap2:0:2}" ; echo "${cut_ap2}" > /dev/null


if [[ -n $@ ]]; then
	if [ $# -eq 4 ]; then
		if [ $1 == alta ]; then
			grep -q "^alu${cut_ap1}${cut_ap2}${cut_nom}" /etc/group ; let x=$?
			if [[ $x -eq 1 ]]
				then 'groupadd "alu${cut_ap1}${cut_ap2}${cut_nom}"'
			fi
			x=0
			grep -q "alu${cut_ap1}${cut_ap2}${cut_nom}" /etc/shadow; let x=$?
			if [[ $x -eq 1 ]]
				then useradd -m -c "$nom $ap1 $ap2" -G "alu${cut_ap1}${cut_ap2}${cut_nom}" "alu${cut_ap1}${cut_ap2}${cut_nom}"  > /dev/null
			fi
		elif [ $1 == baja ]; then
			userdel "alu${cut_ap1}${cut_ap2}${cut_nom}"
			groupdel "alu${cut_ap1}${cut_ap2}${cut_nom}"
		fi
	else
		echo "La sintaxis es incorrecta, usa la siguiente:"
		echo "./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
	fi

	if [ $# -eq 5 ]; then
		if [ $1 == alta ]; then
			x=0
			grep -q "^$5" /etc/group ; let x=$?
			if [[ $x -eq 1 ]]
				then
					'groupadd "$5"'
			fi
			x=0
			grep -q "^$5" /etc/shadow ; let x=$?
			if [[ $x -eq 1 ]]
				then
					useradd -m -c "$nom $ap1 $ap2" -G $5 "alu${cut_ap1}${cut_ap2}${cut_nom}" > /dev/null
			fi
		elif [ $1 == baja ]; then
			userdel "alu${cut_ap1}${cut_ap2}${cut_nom}"
			groupdel $5
		fi
		echo "Usuario creado correctamente"
	fi
else
	echo "Sintaxis inválida; Usa la siguiente:"
	echo "./gestionusuarios.sh alta/baja nom ap1 ap2 [grupo]"
fi
