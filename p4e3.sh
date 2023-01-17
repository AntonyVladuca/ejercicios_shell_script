#!/bin/bash

#Script que busque la palabra h4ck y los guarde en /root/cuarentena
ls -r ./* | grep -iR "hack" > /root/cuarentena/fichero.txt
