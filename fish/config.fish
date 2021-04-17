set -gx default_user dv17wcl
set -gx EDITOR vim
set -gx fish_prompt_pwd_dir_length 4
set -gx PATH $PATH $HOME/.gem/ruby/2.5.0/bin

# set -gx LESS_TERMCAP_vb (set_color ) # emit visual bell
# set -gx LESS_TERMCAP_mb (set_color green) # start blink
set -gx LESS_TERMCAP_md (set_color --bold green) # start bold
set -gx LESS_TERMCAP_me (set_color normal) # turn off bold, blink and underline
set -gx LESS_TERMCAP_so (set_color brblack) # start standout (reverse video)
set -gx LESS_TERMCAP_se (set_color normal) # stop standout
set -gx LESS_TERMCAP_us (set_color --underline cyan) # start underline
set -gx LESS_TERMCAP_ue (set_color normal) # stop underline

alias tree="tree -L 5 --filelimit=16 -CF"
alias ls="ls --classify --sort=version --time-style=long-iso --color=auto"
alias xlock="xlock -mode random -echokeys \# -lockdelay 5"

function fish_greeting
    fish_logo
end

