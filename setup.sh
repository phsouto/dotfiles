#!/usr/bin/env bash

# Backup of existent files
if [ -f "~/.bash_profile" ]; then
    mv ~/.bash_profile ~/.bash_profile.orig
fi
if [ -f "~/.bashrc" ]; then
    mv ~/.bashrc ~/.bashrc.orig
fi
if [ -f "~/.vimrc" ]; then
    mv ~/.vimrc ~/.vimrc.orig
fi
if [ -f "~/.gitconfig" ]; then
    mv ~/.gitconfig ~/.gitconfig.orig
fi

# Copy repo files
cp ./bash_profile ~/.bash_profile
cp ./bashrc ~/.bashrc
cp ./vimrc ~/.vimrc
cp ./gitconfig ~/.gitconfig
