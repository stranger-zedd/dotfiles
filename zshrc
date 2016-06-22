autoload -U compinit promptinit
compinit
promptinit

setopt CORRECT
setopt EXTENDEDGLOB

# Colours
autoload colors zsh/terminfo
if [[ "$terminfo[colors]" -ge 256 ]]; then
        colors
fi

eval `dircolors -b`

PS1="[%n@%m %1~]%{%(?..$fg[red])%}»%{$reset_color%} "

alias ls='ls --color=auto'

# History stuff
HISTFILE=$HOME/.zshistory
setopt SHARE_HISTORY
HISTSIZE=120000
SAVEHIST=120000
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
