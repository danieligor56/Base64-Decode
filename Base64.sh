#!/bin/bash
#
#ENCODO AND DECODE BASE64
#DANIEL IGOR
#
#

which xclip >> /dev/null
VAL1=$?

if [ $VAL1 != 0 ]
then
	echo "Instalando componentes necessários"
	sudo apt-get install xclip >> /dev/null
	sleep 1
fi


ERR1(){
read -p  "Opção invalida, por favor insira uma opção válida: " $OPC1	
if  [ $OPC1 != 1 -o $OPC1 != 2 ]
then
read -p " por favor insira uma opção válida: " $OPC1
fi

}

OPCW3(){
clear
source Base64.sh
_Base64.sh
}
OPCW2(){
touch cripto.txt;echo $CRIPT > cripto.txt
echo "Arquivo salvo em $PWD / cripto.txt "
echo
read -p "Deseja fazer nova consulta ?(Ss.Nn): " NCONSULT
if [ $NCONSULT = S -o $NCONSULT = s ]
then
        OPCW3
elif [ $NCONSULT = n -o $NCONSULT = N ]
then
        exit

fi

}

OPCW1(){
echo $CRIPT | xclip -sel clipboard
sleep 1;
echo
echo "Arquivo enviado para área de transferência..."
echo
read -p "Deseja fazer nova consulta ?(Ss.Nn): " NCONSULT
if [ $NCONSULT = S -o $NCONSULT = s ] 
then 
	OPCW3
elif [ $NCONSULT = n -o $NCONSULT = N ]
then
	exit

fi

}

ESC1(){
read -p "Insira o texto criptografado: " CRIP1
echo
CRIPT=$(echo $CRIP1 | base64 -d)
echo $CRIPT
echo
}

ESC2(){
read -p "Insira o texto para criptografar: " CRIP1
echo
CRIPT=$(echo $CRIP1 | base64)
echo $CRIPT
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
#	*)
#		ERR1
#		exit
#		;;
esac
echo
echo "Escolha a opção desejada:"
echo
echo " 1 - Copiar para área de trasferência."
echo " 2 - Salva em arquivo TXT."
echo " 3 - FAZER NOVA CONSULTA."
echo " 4 - Sair."
echo

read -p "-" OPC

case $OPC in
	
	1)
		OPCW1
		;;
	2)	
		OPCW2
		;;   
         

	3)
		OPCW3
		;;
	4)

		exit
		;;


	esac



