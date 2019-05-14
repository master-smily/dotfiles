#/usr/bin/env sh

scripts=$(dirname $0)/../Script
plug_d=$HOME/.tmux/plugins

mkdir -pv $plug_d
$scripts/clone-install https://github.com/tmux-plugins/tpm $plug_d/tpm

