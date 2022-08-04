#!/bin/bash

echo "Atualizando o servidor ..."

apt update -y
apt upgrade -y
apt install apache2 -y
apt install unzip -y

echo 'Baixando o pacote do Github e movendo os arquivos para o servidor web no linux ...'

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

