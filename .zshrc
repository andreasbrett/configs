# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
#export ZSH=$HOME/.oh-my-zsh
export ZSH=$HOME/.local/share/oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="jonathan"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)
plugins=(git sudo httpie zsh-completions safe-paste aliases dirhistory last-working-dir zsh-navigation-tools)
# to install httpie:
# => sudo apt-get install httpie
# to install zsh-completions:
# => git clone https://github.com/zsh-users/zsh-completions ~/.local/share/oh-my-zsh/custom/plugins/zsh-completions


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export LANG=de_DE.UTF-8
export LANGUAGE=de_DE.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR=/bin/nano

# -------------------------------------------
# some aliases
# -------------------------------------------

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
alias cdr='cd $(git rev-parse --show-toplevel)'
alias ss='sudo su'
alias fd="find . -type d -name"
alias ff="find . -type f -name"
alias rm="rm -i"
alias tail="tail -f"
alias dmesg="dmesg -T"
alias ipa="ip -4 -brief -color address"

# -------------------------------------------
# some nmap-fu
# -------------------------------------------
# > fetch SSL/TLS cert details
alias nmap_ssl_cert="nmap --script ssl-cert -p 443"
# > list SSL/TLS ciphers (also lists protocol versions TLS 1.0, 1.1 etc)
alias nmap_ssl_ciphers="nmap --script ssl-enum-ciphers -p 443"
# > list SSH algorithms (kex, encryption, mac, compression)
alias nmap_ssh_algos="nmap --script ssh2-enum-algos -p 22"
# > list SSH cipher suite
alias nmap_ssh_ciphers="nmap --script ssh2-enum-ciphers -p 22"
# > list supported auth methods for root SSH login
alias nmap_ssh_auth="nmap --script ssh-auth-methods --script-args="ssh.user=root" -p 22"
# > fetch security headers for website
alias nmap_web_headers="nmap --script http-security-headers -p 443"

# -------------------------------------------
# some docker-fu
# -------------------------------------------
alias docon="docker container ls --format 'table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.CreatedAt}}\t{{.State}}\t{{.Status}}\t{{.Size}}'"
alias doup="docker-compose up --detach"
alias dopull="docker-compose pull --no-parallel"
alias doprune="docker image prune --all --force"
alias dologs="docker logs -f"
alias dostart="docker container start"
alias dorestart="docker container restart"
alias dostop="docker container stop"
alias doexec="docker exec -it"

# -------------------------------------------
# run tmux on initial connection via SSH
# -------------------------------------------
if [[ -z $TMUX ]] && [[ -n $SSH_TTY ]]; then
        exec tmux new-session -A -s "tmux"
fi
