#!/usr/bin/env zsh
#
if [ -d "/scratch" ]; then
    export USER_CASHE="/scratch/cashe-$USER"
else
    export USER_CASHE="~/.cache"
fi

export PUB_BIN="/pub/anarchy"
export GRADLE_USER_HOME="$USER_CASHE/.gradle"
export ZSH_CACHE_DIR="$USER_CASHE/zsh"

