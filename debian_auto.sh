#!/usr/bin/env bash
# Copyright (c) 2025
# Author: Ramon Silas
# Prova de SO Livres

clear
cat <<"EOF"
  ____      _    __  __  ___  _   _ 
 |  _ \    / \  |  \/  |/ _ \| \ | |
 | |_) |  / _ \ | |\/| | | | |  \| |
 |  _ <  / ___ \| |  | | |_| | |\  |
 |_| \_\/_/   \_\_|  |_|\___/|_| \_|
                                    
EOF

echo -e "Iniciando configuração..."

#Configuração do  repositorio
# /etc/apt/sources.list.d/debian.sources

# Copia de segurança
cp /etc/apt/sources.list.d/debian.sources /root/debian.sources.copy

#comentando linha do CD/ROM

sed -i '1,1s/^[^#]/# &/g' /etc/apt/sources.list.d/debian.sources

#Adicionando repositorios

echo "deb http://deb.debian.org/debian bookworm main non-free-firmware" >> /etc/apt/sources.list.d/debian.sources
echo "deb-src http://deb.debian.org/debian bookworm main non-free-firmware" >> /etc/apt/sources.list.d/debian.sources

echo "deb http://deb.debian.org/debian-security/ bookworm-security main non-free-firmware" >> /etc/apt/sources.list.d/debian.sources
echo "deb-src http://deb.debian.org/debian-security/ bookworm-security main non-free-firmware" >> /etc/apt/sources.list.d/debian.sources

echo "deb http://deb.debian.org/debian bookworm-updates main non-free-firmware" >> /etc/apt/sources.list.d/debian.sources
echo "deb-src http://deb.debian.org/debian bookworm-updates main non-free-firmware" >> /etc/apt/sources.list.d/debian.sources

echo Arquivos de repositios configurado!


#Atualização

#Atualizando repositorios e sistema
apt-get -y update && sudo apt full-upgrade


#Cmatrix
#Instação do CMTRIX
apt -y install cmatrix

#Cmatrix
#Instação do CMTRIX
apt -y install cmatrix

echo -e CMTRIX instalado!


#SSH
#Instação do SSH
apt -y install cmatrix
echo -e SSH instalado!

echo -e "Para acessar ssh.
         ${BL}http://${IP}:22${CL} \n"