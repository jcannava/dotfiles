#!/bin/bash
if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/.bashrc.orig
fi

if [ -f ~/.bash_profile ]; then
    mv ~/.bash_profile ~/.bash_profile.orig
fi

if [ -f ~/.tmux.conf ]; then
    mv ~/.tmux.conf ~/.tmux.conf.orig
fi

if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.orig
fi

ln -s ~/.dotfiles/bashrc ~/.bashrc
ln -s ~/.dotfiles/bash_profile ~/.bash_profile
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/vimrc ~/.vimrc
