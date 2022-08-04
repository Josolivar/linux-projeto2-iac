#!/bin/bash

echo "Atualizando o servidor e instalando o apache e o unzip..."

apt-get update
apt-get upgrade -y


echo "Instalando o apache e o unzip..."

apt-get install apache2 unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
mkdir /temp/linux-site-dio-main
cd linux-site-dio-main
cp -R * /var/www/html/