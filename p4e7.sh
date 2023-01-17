#!/bin/bash

#script que limpie la carpeta temporal a las 2:00 cada domingo

rm -r /tmp/*

#se edita el crontab y se ejecuta el script de la siguiente manera:
#        0 2 * * 0 [ruta script]
