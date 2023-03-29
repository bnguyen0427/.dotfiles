#!/bin/bash
#remove the .vimrc file in the home directory
rm -f ~/.vimrc
#re,pve the line source in your .bashrc file
sed -i 's/source \~\/\.dotfiles\/bashrc_custom//g' ~/.bashrc
#remove the .TRASH directory inside of your home directory
rm -rf ~/.TRASH
