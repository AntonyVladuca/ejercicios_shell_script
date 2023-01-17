#!/bin/bash

#copia el /etc a /root/etc_save_date.tgz cada vez que se ejecuta el script
#ha de indicarse la fecha de la copia
date=`date +%d-%m-%Y`
rsync -az /etc /root/etc_save_$date.tgz
