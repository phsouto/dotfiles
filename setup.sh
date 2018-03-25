#!/usr/bin/env bash

# Backup of existend files
mv ~/.bash_profile ~/.bash_profile.orig
mv ~/.bashrc ~/.bashrc.orig
mv ~/.vimrc ~/.vimrc.orig
mv ~/.gitconfig ~/.gitconfig.orig

# Link to repo's files
ln -s ./bash_profile ~/.bash_profile
ln -s ./bashrc ~/.bashrc
ln -s ./vimrc ~/.vimrc
ln -s ./gitconfig ~/.gitconfig
