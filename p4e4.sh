#!/bin/bash

#Guarda en /var/log/reinicios.txt la fecha de cava vez que se reinicia el equipo

@reboot date >> /var/log/reinicios.txt
