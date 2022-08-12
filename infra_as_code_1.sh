#!/bin/bash

#Desafio Infraestrutura como código
#Parte do curso Bootcamp Linux Experience

#Root será dono dos diretórios

echo "Criando diretórios..."

mkdir /public
mkdir /data_base
mkdir /media_base

echo "Criando grupos:..."

groupadd DB_ADM
groupadd MD_ADM

echo "Criando usuários:..."

useradd db_1 -c "Data base adm 1" -m -s /bin/bash -G DB_ADM
passwd db_1 -e
 
useradd db_2 -c "Data base adm 2" -m -s /bin/bash -G DB_ADM
passwd db_2 -e

useradd md_1 -c "Media adm 1" -m -s /bin/bash -G MD_ADM
passwd md_1 -e

useradd md_2 -c "Media adm 2" -m -s /bin/bash -G MD_ADM
passwd md_2 -e

echo "Gerabdi permissões dos respectivos diretórios..."

chown root:DB_ADM /data_base
chown root:MD_ADM /media_base

#Permissões: 4-w 2-r 1-x 0-sem permissao ----  ORDEM -> DONO / GRUPO / OUTROS USUARIOS

chmod 770 /data_base
chmod 770 /media_base
chmod 777 /public

echo "Processo finalizado!"
