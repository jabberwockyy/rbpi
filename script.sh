#!/bin/bash
# -*- ENCODING: UTF-8 -*-
#display /home/mariale/índice.jpeg
#echo "hola mundo"

clear
s=0
while [[ $s -eq 0 ]]; do
	echo -n "ingrese un numero"
	read n1
	if [[ $n1 -eq 0 ]]; then
		echo -n "continua el ciclo"
	else
		echo -n "adios"
		s=1
	fi
done

