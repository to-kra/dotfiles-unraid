# console coloring for kool kids
#PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# my own aliases
alias ls='ls -GFh'
alias ll='ls -l'
alias la='ls -la'
alias cd..='cd ..'
alias cd....='cd ../..'
alias cls='clear'
alias clr='clear'

# if this is an xterm set the title to user@host:dir
#case "$TERM" in
#xterm*|rxvt*)
#    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
#    ;;
#*)
#    ;;
#esac

# set my aliases

# impersonate a user
alias user="su -ls /bin/bash"
