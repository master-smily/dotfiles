#!/usr/bin/env sh
if [ ! -d $HOME/.vim/bundle/Vundle.vim ]; then
    git clone --depth 1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim -c 'PluginInstall' -c 'qa!'
