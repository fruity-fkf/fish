#!/bin/bash

#this installs my config
#this assumes that you are using arch or an arch based distro
#i am too lazy to  make other versions for other distros

sudo pacman -Sy fish exa bat lolcat 
curl -sS https://starship.rs/install.sh | sh
cp -r fish ~/.config/fish
cp starship.toml ~/.config/starship.toml

