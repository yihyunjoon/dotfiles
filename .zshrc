export NVM_LAZY_LOAD=true

# Load aliases
source "$HOME/dotfiles/alias.sh"

if [[ $(uname) = "Linux" ]]; then
    export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
    export PATH="/home/linuxbrew/.linuxbrew/sbin:$PATH"
fi

# Install zinit
if [ ! -e "$HOME/.zinit/bin/zinit.zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
fi

# Load zinit
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of zinit's installer chunk

### zinit begin
zinit light "zdharma/fast-syntax-highlighting"
zinit load "zdharma/history-search-multi-word"
zinit ice pick"async.zsh" src"pure.zsh"
zinit light "sindresorhus/pure"
zinit load "agkozak/zsh-z"
zinit light "lukechilds/zsh-nvm"
### zinit end

autoload -Uz compinit
compinit
zinit cdreplay -q

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

setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match

zstyle ':completion:*' menu select
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion

zinit light zsh-users/zsh-completions

# Funtoo keychain
case "$OSTYPE" in
    darwin*)    eval `keychain --eval --agents ssh --inherit any id_25519` ;;
    linux-gnu*) eval `keychain --eval --agents ssh id_ed25519` ;;
    *)          echo "Unknown" ;;
esac

