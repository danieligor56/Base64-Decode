#!/bin/bash

# DESCRIPTOGRAFADOR BASE 64 | RECEBE UMA VALOR CODIFICADO COM BASE64 E O DESCODIFICA.
#DANIEL IGOR 12-10-22 
#
#
#

touch conect.out
echo
echo "DECODIFICADOR BASE64 | ATENÇÃO, NÃO USAR ATALHOS DO TECLADO PARA COPIAR/COLAR..."
echo "*** *** *** *** *** *** *** ***"
echo
read -p " Texto criptografado: " TXT1
echo
sleep 1 && echo Descriptografando...
echo TXT1 | base64 -a > conect.out
echo
cat conect.out 
echo
#MENU DE OPÇÃO -- 
echo 
echo
echo "(1) EDITAR ARQUIVO."
echo "(2) Definir base para arquivo."
echo "(3) Definir base como localhost."
echo "(4) Definir base para arquivo. "
echo "(5) Sair do programa."
echo
read -p "Escolha a opção:" OPC1
echo
#MENU DE OPÇÃO. 
case $OPC1 in
	1) 
                EDITAARQ
		;;
	2)       
		DEFBASE
		;;	

	5)
		exit
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


