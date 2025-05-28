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
mkdir /root/bkp
cp /etc/apt/sources.list /root/bkp/sources.list.copy
echo -e "\n"

#Adicionando repositorios

echo "deb http://deb.debian.org/debian bookworm main non-free-firmware" > /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian bookworm main non-free-firmware" >> /etc/apt/sources.list

echo "deb http://deb.debian.org/debian-security/ bookworm-security main non-free-firmware" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian-security/ bookworm-security main non-free-firmware" >> /etc/apt/sources.list

echo "deb http://deb.debian.org/debian bookworm-updates main non-free-firmware" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian bookworm-updates main non-free-firmware" >> /etc/apt/sources.list

echo "Arquivos de repositios configurado!"

echo -e "\n"

#Atualização

#Atualizando repositorios e sistema
apt-get -y update && apt -y full-upgrade

echo -e "\n"

#Cmatrix
#Instação do CMTRIX
echo -e "Instalando CMTRIX!"
apt -y install cmatrix
echo -e "CMTRIX instalado!\n"
echo -e "\n"


#SSH
#Instação do SSH
echo -e "Instalando CMTRIX!"
apt -y install cmatrix
echo -e SSH instalado!
echo -e "\n"

#Fim
echo -e "...................................\n"

echo -e "Configuração completa!!!\n"
echo -e "Aluno: Ramon Shockness\n"
echo -e "Professor: Tiago\n"
date
echo -e "...................................\n"

#timedatectl