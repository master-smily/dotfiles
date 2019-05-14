#!/usr/bin/env sh
scripts=$(dirname $0)/../Script

cd $HOME/.dotfiles
echo "Installing/updating oh-my-zsh"
git submodule update --init --recommend-shallow "Zsh/.oh-my-zsh" > /dev/null

ZSH_PLUG_DIR=${ZSH_CUSTOM:-Zsh/.oh-my-zsh/custom}/plugins
ZSH_SYNTAX_H=${ZSH_PLUG_DIR}/zsh-syntax-highlighting/ 
$scripts/clone-install https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_SYNTAX_H 
