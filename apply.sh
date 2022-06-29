#!/bin/sh

cd $HOME
mkdir .zsh && cd .zsh
git clone https://github.com/ohmyzsh/ohmyzsh
git clone https://github.com/olivierverdier/zsh-git-prompt
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting
cd ~/dotfiles
mv .zshrc ~
mv .config/* ~/.config
cd ~
echo Look at the rest of the instructions and scripts as to how to install my GNOME customizations and DOOM Emacs
sudo dnf install alcritty vim-enhanced nodejs npm yarnpkg libtool ripgrep neovim zsh gh cmake rust rls cargo clang pip i3-gaps i3-gaps-doc nitrogen picom j4-dmenu-desktop feh flameshot -y
