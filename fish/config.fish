set -gx EDITOR nvim
set -gx fish_prompt_pwd_dir_length 4
set -gx fish_prompt_pwd_full_dirs 3

# set -gx LESS_TERMCAP_vb (set_color ) # emit visual bell
# set -gx LESS_TERMCAP_mb (set_color green) # start blink
set -gx LESS_TERMCAP_md (set_color --bold green) # start bold
set -gx LESS_TERMCAP_me (set_color normal) # turn off bold, blink and underline
set -gx LESS_TERMCAP_so (set_color brblack) # start standout (reverse video)
set -gx LESS_TERMCAP_se (set_color normal) # stop standout
set -gx LESS_TERMCAP_us (set_color --underline cyan) # start underline
set -gx LESS_TERMCAP_ue (set_color normal) # stop underline

set -gx MAN_POSIXLY_CORRECT 1
set -gx LC_CTYPE C.UTF8

alias tree="tree -L 5 --filelimit=16 -CF"
alias ls="ls --classify --sort=version --time-style=long-iso --color=auto"
alias xlock="xlock -mode random -echokeys \# -lockdelay 5"
alias zypper-info="zypper info --requires --recommends --suggests --supplements --provides"

abbr --add vim nvim
abbr --add --position anywhere zypp zypper
abbr --add zyppr zypper
abbr --add --position anywhere zinstall "zypper install"
abbr --add --position anywhere zsearch "zypper search"
abbr --add --position anywhere zrepo "zypper repo"
abbr --add --position anywhere zinfo  "zypper-info"


function fish_greeting
    fish_logo
end

