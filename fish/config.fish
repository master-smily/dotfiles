set -gx default_user dv17wcl
set -gx EDITOR vim
set -gx fish_prompt_pwd_dir_length 4
set -gx PATH $PATH $HOME/.gem/ruby/2.5.0/bin

alias tree="tree -L 5 --filelimit=16 -CF"
alias ls="ls --classify --sort=version --time-style=long-iso --color=auto"
alias xlock="xlock -mode random -echokeys \# -lockdelay 5"

function fish_greeting
    fish_logo
end

