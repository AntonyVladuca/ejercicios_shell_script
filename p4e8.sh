#!/bin/bash

#script que escribe en /tmp/usuarios la fecha y el nº de usu conectados en ese momento


who -q >> /tmp/usuarios
date >> /tmp/usuarios
echo "" >> /tmp/usuarios


