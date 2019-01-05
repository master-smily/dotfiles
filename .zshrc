#!/usr/bin/env zsh

source ~/.zshrc.pre-oh-my-zsh
export SHELL='/usr/local/bin/zsh'

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

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
  "robbyrussell"
  "agnoster"
  "amuse"
  "arrow"
  "avit"
  "awesomepanda"
  "bira"
  "blinks"
  "bureau"
  "candy"
  "dogenpunk"
  "frisk"
  "funky"
  "gallifrey"
  "gallois"
  "garyblessington"
  "gentoo"
  "gnzh"
  "jreese"
  "jtriley"
  "juanghurtado"
  "junkfood"
  "kardan"
  "kolo"
  "minimal"
  "mortalscumbag"
  "mrtazz"
  "muse"
  "nanotech"
  "nebirhos"
  "nicoulaj"
  "philips"
  "pygmalion"
  "sammy"
  "simple"
  "smt"
  "sorin"
  "sporty_256"
  "steeef"
  "sunaku"
  "sunrise"
  "superjarin"
  "suvash"
  "terminalparty"
  "theunraveler"
  "tonotdo"
  "wedisagree"
  "wezm"
  "xiong-chiamiov-plus"
  "ys"
  "zhann"
)

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  git-extras
  colorize
  command-not-found
  compleat
  web-search
  zsh-syntax-highlighting
  gradle
)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR=vim

# export CLASSPATH=".:/pub/anarchy/antlr-4.7.1-complete.jar:$CLASSPATH"
# alias antlr4='java org.antlr.v4.Tool -o build -long-messages'
# alias grun='java org.antlr.v4.gui.TestRig'

alias ls="ls --classify --sort=version --width=120 --time-style=long-iso --color=auto"
alias xlock="xlock -mode random"
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
