#!/bin/bash
# -*- ENCODING: UTF-8 -*-
#display /home/mariale/índice.jpeg
#echo "hola mundo"

clear
trap '' 2
s=0
	echo "Bienvenido potatoOS, ingresa 'do ' y un comando"
	echo "Accion 1: ac1
		  Accion 2: ac2
		  Apagar : byebye
		  Reboot : isalive"
while [[ $s -eq 0 ]]; do
	echo -n "$ "
	read n1
	case $n1 in
		"do ac1" )
			echo "Accion1"
			;;
		"do ac2" )
			echo "Accion2"
			;;
		"do byebye" )
			echo "El sistema se apagara, byebye"
			s=1
			;;
		"do isalive" )
			echo "El sistema se reiniciara, isalive?"
			s=2
			;;
		"do" )
			echo "Debe ingresar una accion despues del comando"
			;;
		* )
			echo "::WARNING:: El comando ingresado no existe"
			;;
		"papaya" )
			echo "winter is here..."
			trap – 2
			;;

	esac
	# if [[ $n1 -eq 0 ]]; then
	# 	echo -n "continua el ciclo"
	# else
	# 	echo -n "adios"
	# 	s=1
	# fi
done
trap – 2
case $s in
	1 )
	sudo shutdown -h now
		;;
	2 )
	sudo reboot
		;;
esac

