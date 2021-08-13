ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
plugins=(git httpie zsh-completions)

export LANG=de_DE.UTF-8
export LANGUAGE=de_DE.UTF-8
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