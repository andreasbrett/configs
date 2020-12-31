#!/bin/bash

# go to home folder
cd $HOME

# clone oh-my-zsh
git clone http://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh

# move to ~/.local/share
mv ~/.oh-my-zsh $HOME/.local/share/oh-my-zsh

# install plugins
git clone https://github.com/zsh-users/zsh-completions $HOME/.local/share/oh-my-zsh/custom/plugins/zsh-completions

# relaunch zsh
source ~/.zshrc
