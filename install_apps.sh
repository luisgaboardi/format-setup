#!/bin/sh

# Update and upgrade
sudo apt update
sudo apt upgrade

# Git
sudo apt install git

# Essentials
sudo apt install build-essential

# Visual Studio Code
sudo apt update
sudo apt install software-properties-common apt-transport-https wget curl
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code

# ZSH
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text

# Discord
sudo apt install gdebi-core
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo gdebi ~/discord.deb

# OBS
sudo apt install obs-studio

# VLC
sudo apt install VLC

# CARLA Simulator
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1AF1527DE64CB8D9
sudo add-apt-repository "deb [arch=amd64] http://dist.carla.org/carla $(lsb_release -sc) main"
sudo apt update
sudo apt install carla-simulator

# Gnome tweaks
sudo add-apt-repository universe
sudo apt install gnome-tweak-tool
# Applications adwaita-dark
# Cursor dms-white
# Icons EPapirus
# Instalar dash to dock