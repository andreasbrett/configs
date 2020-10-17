ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
plugins=(git httpie zsh-completions)

export LANG=de_DE.UTF-8
export LANGUAGE=de_DE.UTF-8
export EDITOR=/bin/nano

alias ls="ls --color=auto"
alias ll="ls -alFh"
alias la="ls -a"
alias df="df -H"
alias du="du -h"
alias scr="screen"
alias sc-start="sudo systemctl start"
alias sc-stop="sudo systemctl stop"
alias sc-status="systemctl status"
alias zshrc="${=EDITOR} ~/.zshrc"
alias upd="sudo apt-get update"
alias upg="sudo apt-get upgrade"