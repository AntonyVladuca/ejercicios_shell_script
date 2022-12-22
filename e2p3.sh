#!/bin/bash

#Busca cualquier fichero que se pueda modificar por cualquier usuario
#Guarda la lista de ficheros en la ruta exacta en el archivo archivos_peligrosos.txt

ls -lR | grep "^-------rwx" | cut -d " " -f1,11 > ~/Escritorio/archivos_peligrosos.txt
