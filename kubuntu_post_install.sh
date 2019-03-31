#!/usr/bin/env bash

# Este script deve ser executado como root...
if [ "$(id -u)" != "0" ]; then
   echo "Este script deve ser executado como root ou sudo" 1>&2
   exit 1
fi

# Atualiza o sistema
apt update
apt upgrade -y

# Instala ferramentas básicas
apt install -y vim htop tmux aptitude

# Instala ferramentas especificas para laptop
apt install -y lm-sensors tlp
systemctl enable tlp
systemctl start tlp
sensors-detect --auto

# Instala codecs multimidia
apt install -y kubuntu-restricted-extras kubuntu-restricted-addons

# Instala ferramentas sortidas
apt install -y fortune cowsay neofetch
apt install -y qbittorrent

# Instala virtualbox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add -
add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"
apt update
apt install -y virtualbox-6.0

