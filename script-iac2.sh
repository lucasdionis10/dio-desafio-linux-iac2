#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando o Apache2..."
apt-get install apache2 -y

echo "Instalando o Unzip..."
apt-get install unzip -y

cd /tmp

echo "Baixando conteúdo do site..."
wget https://github.com/lucasdionis10/instagram-dio/archive/refs/heads/master.zip

echo "Descompactando o site..."
unzip master.zip
cd instagram-dio-master

echo "Copiando arquivos para o servidor..."
cp -R * /var/www/html
