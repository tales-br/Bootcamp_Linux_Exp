#!/bin/bash

#Desafio Infraestrutura como código
#Parte do curso Bootcamp Linux Experience
#Script de provisionamento de um servidor web (apache)

echo "Atualizando S.O..."
apt-get update
apt-get upgrade

echo "Instalando arquivos necessários para o web server..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e descompactando arquivos do site.."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Colocando arquivos no diretório apache"
#diretório atual /tmp
cd linux-site-dio-main
cd -R * /var/www/html/
