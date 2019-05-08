echo "Loading dotfiles .zshrc"

export NVM_LAZY_LOAD=true

### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

### zplugin begin
zplugin light "zdharma/fast-syntax-highlighting"
zplugin load "zdharma/history-search-multi-word"
zplugin ice pick"async.zsh" src"pure.zsh"
zplugin light "sindresorhus/pure"
zplugin ice "rupa/z" pick"z.sh"
zplugin light "rupa/z"
zplugin light "lukechilds/zsh-nvm"
zplugin ice as"program" make'!' atclone'./direnv hook zsh > zhook.zsh' atpull'%atclone' pick"direnv" src"zhook.zsh"
zplugin light direnv/direnv
### zplugin end

## History file configuration
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000

## History command configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data

### alias begin
alias ls="exa"
alias l="ls -al"
alias nv="nvim"
### alias end
