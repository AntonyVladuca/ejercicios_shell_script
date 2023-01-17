#!/bin/bash

#script que modifique el /var/log/historial.txt con crontab cada 10m

w >> /var/log/historial.txt

#Se modifica el crontab y se ejecuta como */10 * * * * [ruta script]
