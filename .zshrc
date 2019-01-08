#!/usr/bin/env zsh

source ~/.zshrc.pre-oh-my-zsh
export SHELL='/usr/local/bin/zsh'

# Path to your oh-my-zsh installation.
export ZSH="/home/dv17/dv17wcl/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="random"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=(
    "amuse" "arrow" "avit" "awesomepanda" "bira" "blinks" "bureau" "candy"
    "dogenpunk" "frisk" "funky" "gallifrey" "gallois" "garyblessington"
    "gentoo" "gnzh" "jreese" "jtriley" "juanghurtado" "junkfood" "kardan"
    "kolo" "mortalscumbag" "mrtazz" "muse" "nanotech" "nebirhos"
    "nicoulaj" "philips" "pygmalion" "robbyrussell" "sammy" "simple" "smt"
    "sorin" "sporty_256" "steeef" "sunaku" "sunrise" "superjarin" "suvash"
    "terminalparty" "theunraveler" "tonotdo" "wedisagree" "wezm"
    "xiong-chiamiov-plus" "ys" "zhann"
    )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git git-extras colorize command-not-found compleat web-search
  zsh-syntax-highlighting gradle
)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR=vim

# export CLASSPATH=".:/pub/anarchy/antlr-4.7.1-complete.jar:$CLASSPATH"
# alias antlr4='java org.antlr.v4.Tool -o build -long-messages'
# alias grun='java org.antlr.v4.gui.TestRig'

alias tree="tree -L 4 --filelimit=16"
alias ls="ls --classify --sort=version --width=100 --time-style=long-iso --color=auto"
alias xlock="xlock -mode random -echokeys -echokey \# -lockdelay 5"
# export MANPATH="/usr/local/man:$MANPATH"
export PATH="$HOME/.gem/ruby/2.3.0/bin:$PATH"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8


# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

export SDKMAN_DIR="/pub/anarchy/sdkman"
function () {
    local sdkman_init_path="$SDKMAN_DIR/bin/sdkman-init.sh"
    if [ ! -f "$sdkman_init_path" ]; then
        curl -s "https://get.sdkman.io" | zsh
    fi
    source "$sdkman_init_path"
}
