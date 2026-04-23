# Directory shortcuts
alias ...='../..'
alias ....='../../..'

# Common tools
alias l='eza -al'
alias th='trash'
alias tma='tmux a -t'

# Package managers
alias pn='pnpm'
alias npx='pnpm dlx'
alias r='cargo'
alias u='uv run'

# Editors
alias nv='nvim'
alias lv='NVIM_APPNAME=nvim-lazy nvim'

# Git and GitHub
alias g='git'
alias gs='git switch'
alias gp='git push'
alias gc='gh repo clone'


alias sudo='sudo '
alias reload='exec $(SHELL) -l'
alias cld='claude --dangerously-skip-permissions'
alias pil='pi --no-skills --skill ./.agents/skills' # pi with local skills only (./.agents/skills)
