#!/bin/bash

# Copias de seguridad a la 1 de la mañana
# Todos los días del /etc --> incrementales
# Los domingos del /home /root /etc --> completas

#Se edita el crontab y se ejecuta el script de la siguiente forma
#      00 01 * * * [ruta script]

semana = 'date +%A'
fecha = 'date +%d+%m+%Y'

if [[ $semana == "Sunday" ]]; then
	if [[ -d /copias_seguridad && /copias_seguridad/completas ]];then

			echo " Las carpetas fueron creadas anteriormente "

		else

			mkdir /copias_seguridad /copias_seguridad/completas

		fi

	echo " Iniciando la copia de seguridad completa... "

	tar -czpf /copias_seguridad/completas/backup_$fecha /home /root /etc
	date >> /copias_seguridad/completas/fecha.txt

	echo " Proceso finalizado. La copia se ha creado correctamente.  "

	else

		if [[ -d /copias_seguridad && /copias_seguridad/incrementales ]];then

			echo " Las carpetas fueran creadas anteriormente "

		else

			mkdir /copias_seguridad /copias_seguridad/incrementales

		fi

		echo " Iniciando la copia de seguridad incremental...  "

		tar -czpf /copias_seguridad/incrementales/incr_$fecha /etc
		date >> /copias_seguridad/incrementales/fecha.txt

		echo "Proceso finalizado. La copia se ha creado correctamente"
	fi

