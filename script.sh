#!/bin/bash
# -*- ENCODING: UTF-8 -*-

clear

trap '' 2

s=0
	
echo "Bienvenido potatoOS, ingresa 'do ' y un comando"
	

echo "	

	Calculadora: calcular
		  
	Fecha y Hora: f-h
		  	
	Apagar : byebye
		  
	Reboot : isalive"


while [[ $s -eq 0 ]]; do
	
	echo -n "$ "
	
	read n1
	
	case $n1 in
		
		"do calcular" )
						
			echo -n "ingresar un numero: "
		
			read n2
		
			echo -n "ingrese otro numero: "
		
			read n3
		
			P=$(expr $n2 + $n3)
		
			echo "El resultado de la suma es: " $P
		
			R=$(expr $n2 - $n3)
		
			echo "El resultado de la resta es: " $R
		
			M=$(expr $n2 \* $n3)
		
			echo "El resultado de la multiplicacion es: " $M
		
			D=$(expr $n2 \/ $n3)
		
			echo "El resultado de division es: " $D 
		
			
			;;
		
		"do f-h" )
				
			dia=`date +"%d/%m/%Y"`
			hora=`date +"%H:%M"`

			echo "Hoy es $dia y la hora actual es $hora"
		
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
		
		"papaya" )
		
			echo "winter is here..."

			s=3
			
			;;
		
	
		* )
			
			echo "::WARNING:: El comando ingresado no existe"
			
			;;

	
	
	esac
	

done 
trap  2

case $s in
	
	1 )
	sudo shutdown -h now
		
			;;
	
	2 )
	sudo reboot
		
			;;

esac
