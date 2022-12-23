#!/bin/bash

# DESCRIPTOGRAFADOR BASE 64 | RECEBE UMA VALOR CODIFICADO COM BASE64 E O DESCODIFICA.
#DANIEL IGOR 12-10-22 
#
#
ESC1(){
read -p "Insira o texto criptografado: " CRIP1
echo
echo $CRIP1 | base64 -d
echo
}
ESC2(){
read -p "Insira o texto para criptografar: " CRIP2
echo
echo $CRIP2 | base64
echo
}


echo
echo "DECODIFICADOR BASE64 | ATENÇÃO, NÃO USAR ATALHOS DO TECLADO PARA COPIAR/COLAR..."
echo "*** *** *** *** *** *** *** ***"
echo
echo "Digite a opção desejada:"
echo
echo " 1 - Descriptografar."
echo " 2 - Criptografar."
echo
read -p "-" OPC1
echo
case $OPC1 in 
	1)
		ESC1
		;;
	2)	ESC2
		;;
	*)
		echo "Opção invalida."
		;;
esac

#VALIDAÇÃO DE NOVA CONSULTA. 
echo
read -p "Deseja fazer uma nova consulta ? " OPC3
case $OPC3 in 
	
	[S,s])
	 	sleep 2
		clear
		source Base64.sh
	_Base64.sh
	;;
	[N,n])

	exit
	;;
esac


