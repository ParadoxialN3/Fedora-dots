#!/bin/sh

cd $HOME
mkdir .zsh && cd .zsh
git clone https://github.com/ohmyzsh/ohmyzsh
git clone https://github.com/olivierverdier/zsh-git-prompt
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting
cd ~/Fedora-dots
mv .zshrc ~
mv .config ~
sudo dnf install nodejs npm yarnpkg -y
cd $HOME/.local/share/nvim/plugged/coc.nvim && yarn install
cd ~
