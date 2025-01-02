#!/bin/bash

# setup in ubuntu settings
# install vscode

rm --recursive --force $HOME/Documents
rm --recursive --force $HOME/Music
rm --recursive --force $HOME/Videos
rm --recursive --force $HOME/Templates

sudo apt update
sudo apt upgrade --yes

sudo apt install git make vim curl --yes
cp .gitconfig $HOME/.gitconfig

cp settings.json $HOME/.config/Code/User/settings.json
cp keybindings.json $HOME/.config/Code/User/keybindings.json

cp config $HOME/.ssh/config
ssh-keygen -t rsa -b 4096 -f ~/.ssh/gearam
