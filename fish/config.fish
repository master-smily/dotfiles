set -gx default_user dv17wcl
set -gx EDITOR vim
set -gx fish_prompt_pwd_dir_length 4

alias tree="tree -L 4 --filelimit=16"
alias ls="ls --classify --sort=version --time-style=long-iso --color=auto"
alias xlock="xlock -mode random -echokeys \# -lockdelay 5"

function fish_greeting
    fish_logo
end

