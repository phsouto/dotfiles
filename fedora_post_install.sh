#!/usr/bin/env bash

# Este script deve ser executado como root...
if [ "$(id -u)" != "0" ]; then
   echo "Este script deve ser executado como root ou sudo" 1>&2
   exit 1
fi


# 'Adicionando repositório RPMFusion free...'
dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm 

# 'Adicionando repositório RPMFusion non-free...'
dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# 'Instalado ferramentas básicas...'
dnf install -y nano vim htop tmux 

# 'Codecs...'
dnf install -y gstreamer1-{ffmpeg,libav,plugins-{good,ugly,bad{,-free,-nonfree}}} --setopt=strict=0
dnf install -y gstreamer1-{plugin-crystalhd,ffmpeg,plugins-{good,ugly,bad{,-free,-nonfree,-freeworld,-extras}{,-extras}}} libmpg123 lame-libs --setopt=strict=0

# 'Instalando ferramentas extras...'
dnf install -y chromium qbittorrent
dnf install -y neofetch
dnf install -y fortune
dnf install -y unrar
dnf install -y tlp
dnf install -y lm_sensors

# Ativando o tlp
systemctl enable tlp
systemctl start tlp

# Detectando os sensores
sensors-detect --auto

# 'Configurando o /etc/hosts'
cp /etc/hosts /etc/hosts.orig \
    && curl https://someonewhocares.org/hosts/hosts > /tmp/hosts \
    && mv /tmp/hosts /etc/hosts \
    && rm /tmp/hosts

