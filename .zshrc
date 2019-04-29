echo "Loading dotfiles .zshrc"

# zplug begin
export ZPLUG_HOME=/Users/hyunjoon/.zplug
source $ZPLUG_HOME/init.zsh

zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "rupa/z", as:plugin, use:z.sh

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
  zplug install
fi

zplug load
# zplug end

# alias begin
alias ls="exa"
alias l="ls -al"
# alias end
