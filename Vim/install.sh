#!/usr/bin/env sh

scripts=$(dirname $0)/../Script

$scripts/clone-install https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing Vim plugins"
vim -c 'PluginInstall' -c 'qa!'
