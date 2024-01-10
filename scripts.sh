#!/bin/bash

echo "Iniciando programa"

echo "Criando diretorios"

mkdir publico adm ven sec

echo "Criando grupos de usuarios"

groupadd grp_adm
groupadd grp_ven
groupadd grp_sec

echo "Criando usuarios"

useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_adm
useradd maria -c "Maria da Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_adm
useradd joao -c "Joao  da Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_adm
useradd debora -c "Debora da Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_ven
useradd sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_ven
useradd roberto -c "roberto da Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_ven
useradd josefina -c "josefina da Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_sec
useradd amanda -c "Amanda da Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_sec
useradd rogerio -c "Rogerio da Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G grp_sec

echo "Informando dono e grupo ao diretorio"

chown root:grp_adm /adm
chown root:grp_ven /ven
chown root:grp_sec /sec
chown root:root /publico

echo "Informando as permisões para cada diretorio"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec 


echo "Programa finalizado!"

