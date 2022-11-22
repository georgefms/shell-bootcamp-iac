#!/bin/bash

echo "Removendo diretorios..."
rm -Rf /adm/ /publico/ /sec

echo "Criando os diretórios..."
mkdir /publico /adm  /ven /sec

echo "Criando os grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Adicionando os usuarios..."
#usario:ADM
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
#usuario:VEN
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
#usuario:SEC
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
	#Usa-se o modo acima ou o abaixo:
	#usermod -G GRP_ADM carlos
	#usermod -G GRP_VEN roberto
	#usermod -G GRP_SEC rogerio
echo "Criando permissões e alterando grupos..."
##Alterando o dono dos diretorios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
##Adicionando permissões
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "Sucesso..."
