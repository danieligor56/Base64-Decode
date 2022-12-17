#!/bin/bash

# DESCRIPTOGRAFADOR BASE 64 | RECEBE UMA VALOR CODIFICADO COM BASE64 E O DESCODIFICA.
#DANIEL IGOR 12-10-22 

#ATENÇÃO, DEIXAR PASTA NO MESMO LOCAL DO SCRIPT.
#CASO O ARQUIVO NÃO EXISTA O SISTEMA IRÁ CRIAR AUTOMATICAMENTE.

# Aqui não por a(s) bibliotecas dentro de uma função, criar 
#VERIFICAÇÃO SE O ARQUIVO EXISTE - (conect.out)
if  test ! -e /home/danieligor/conect.out
then
        echo "Criando arquivo"
	sleep 1
	touch conect.out
	echo "Arquivo criado, prosseguindo..."
	echo
fi

#EDITA ARQUIVO VIA NANO. (OPÇÃO 1)
EDITAARQ(){

	nano conect.out
}

#DEFININDO BASE - FUNCTION PARA DEFINIR BASE. (OPÇÃO 2) 
DEFBASE(){
read -p "Insira o endereço da base:" OPCBASE
                echo
                tail conect.out |sed 's/localhost/'$OPCBASE'/' conect.out
		echo
		read -p "O endereço está correto ? (Ss,Nn):" OPC2
		case $OPC2 in
			[S,s])
				echo "Criptografando..."
				echo
				cat conect.out |base64
				;;	
			[N,n])
				read -p "Insira o endereço correto para base:" OPCBASE
                                tail conect.out |sed 's/localhost/'$OPCBASE'/' conect.out
				read -p "O endereço está correto ? (Ss,Nn):" OPC2
					if [$OPC2 = S -o $OPC2 = s]
					then
						echo "Script OK"
					fi
						;;


					esac
}
DEFHOST(){
                tail conect.out |sed 's/localhost/'$OPCBASE'/' conect.out
                echo
                read -p "O endereço está correto ? (Ss,Nn):" OPC2
                case $OPC2 in
                        [S,s])
                                echo "Criptografando..."
                                echo
                                cat conect.out |base64
                                ;;
                        [N,n])
                                read -p "Insira o endereço correto para base:" OPCBASE
                                tail conect.out |sed 's/localhost/'$OPCBASE'/' conect.out
                                read -p "O endereço está correto ? (Ss,Nn):" OPC2
                                        if [$OPC2 = S -o $OPC2 = s]
                                        then
                                                echo "Script OK"
                                        fi
                                                ;;


                                        esac



				}
echo "DECODIFICADOR BASE64 | ATENÇÃO, NÃO USAR ATALHOS DO TECLADO PARA COPIAR/COLAR..."
echo
echo "*** *** *** *** *** *** *** ***"
read -p "Conect string: " Cripto1
echo
echo "Descriptogranfando: " ; sleep 2
echo "$Cripto1"| base64 -d > conect.out
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


