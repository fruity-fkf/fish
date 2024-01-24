#!/bin/bash

#this installs my config
#this assumes that you are using arch or an arch based distro
#i am too lazy to  make other versions for other distros

sudo pacman -Sy fish eza bat lolcat fd ripgrep wget 
mv ~/.config/fish ~/.config/fish.bak 
cp -r fish ~/.config/fish

