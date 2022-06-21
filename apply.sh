#!/bin/sh

cd $HOME
mkdir .zsh && cd .zsh
git clone https://github.com/ohmyzsh/ohmyzsh
git clone https://github.com/olivierverdier/zsh-git-prompt
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting
cd ~/dotfiles
mv .zshrc ~
mv .config ~
sudo dnf install emacs alacritty nvim vim-enhanced nodejs npm yarnpkg -y
cd $HOME/.local/share/nvim/plugged/coc.nvim && yarn install
cd ~
echo Look at the rest of the instructions and scripts as to how to install my GNOME customizations and DOOM Emacs
