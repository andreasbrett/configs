#!/bin/bash

# go to home folder
cd $HOME

# install zsh
sudo apt-get install zsh

# clone oh-my-zsh
git clone http://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh

# move to ~/.local/share
mv ~/.oh-my-zsh $HOME/.local/share/oh-my-zsh

# install plugins
sudo apt-get install httpie
git clone https://github.com/zsh-users/zsh-completions $HOME/.local/share/oh-my-zsh/custom/plugins/zsh-completions

# start zsh
zsh

# change shell to zsh
chsh -s /bin/zsh

# relaunch zsh
source ~/.zshrc
