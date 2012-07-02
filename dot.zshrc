export PATH=$PATH:/home/simon/bin:/sbin:/usr/sbin:/usr/local/sbin
alias s="sudo -H -s"
alias search="apt-cache search"
alias update="apt-get update"
alias install="apt-get install"
alias dist-upgrade="apt-get dist-upgrade"
alias autoremove="apt-get autoremove"

# Created by newuser for 4.3.17
 export RPROMPT=$'%b%{\e[0;34m%}%B[%b%{\e[1;37m%}%~%{\e[0;34m%}%B]%b%{\e[0m%}'
 autoload -Uz compinit
 compinit
alias l="ls -lai --color"
alias li="ls --color -i"
alias ls="ls --color"

PS1="$(print '%{\e[0;34m%}[%*] %{\e[0;36m%}%w%{\e[0;33m%} (%B%K%n@%m%k%b)  \
>_%{\e[0m%} ')"
