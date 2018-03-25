#!/usr/bin/env bash

# Backup of existend files
mv ~/.bash_profile ~/.bash_profile.orig
mv ~/.bashrc ~/.bashrc.orig
mv ~/.vimrc ~/.vimrc.orig
mv ~/.gitconfig ~/.gitconfig.orig

# Link to repo's files
cp ./bash_profile ~/.bash_profile
cp ./bashrc ~/.bashrc
cp ./vimrc ~/.vimrc
cp ./gitconfig ~/.gitconfig
