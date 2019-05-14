#/usr/bin/env sh

plug_d=$HOME/.tmux/plugins

mkdir -pv $plug_d
git clone --depth 1 https://github.com/tmux-plugins/tpm $plug_d/tmp


