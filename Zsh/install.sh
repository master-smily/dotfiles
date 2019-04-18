#!/usr/bin/env sh
cd $HOME/.dotfiles
git submodule update --init --recommend-shallow "Zsh/.oh-my-zsh"

ZSH_PLUG_DIR=${ZSH_CUSTOM:-Zsh/.oh-my-zsh/custom}/plugins
ZSH_SYNTAX_H=${ZSH_PLUG_DIR}/zsh-syntax-highlighting/ 
if [ -d $ZSH_SYNTAX_H ]; then
    cd $ZSH_SYNTAX_H
    git pull
else
    git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_SYNTAX_H
fi
