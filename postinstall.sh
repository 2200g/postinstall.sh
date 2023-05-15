#!/bin/sh 

echo "aadi's arch linux post-installation script <3"

## directories and stuff
mkdir ~/.local/ ~/.local/bin ~/.local/src
mkdir ~/dox ~/pix ~/dl ~/vids ~/strg



## packages and stuff
sudo pacman -Syuu

read -r -p "choose extra packages: {syntax:'discord brave-bin firefox vim'}" extras
pkgs = "git vim discord brave zsh"
sudo pacman -S $pkgs


## zsh and oh my zsh
sudo chsh -s $(which zsh)
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## walls
git clone git@github.com:2200g/walls.git ~/pix/

