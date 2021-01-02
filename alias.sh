alias ...='../..'
alias ....='../../..'

alias ls='exa'
alias l='ls -al'

# Git and GitHub
alias g='git'
alias gs='git switch'
alias gp='git push'
alias gc='gh repo clone'

alias v='bat'

alias a='cargo'
alias c='code'
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

