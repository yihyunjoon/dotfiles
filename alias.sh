alias ...='../..'
alias ....='../../..'

alias ls='exa'
alias l='ls -al'

alias g='git'
alias v='bat'

alias nv='nvim'
alias em='emacs'
alias th='trash'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Reload the shell (i.e. invoke as a login shell)
alias reload='exec $(SHELL) -l'

if [[ $(uname) = 'Linux' ]]; then
    alias stl='systemctl'
fi

