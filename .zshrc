export NVM_LAZY_LOAD=true

# Load aliases
source "$HOME/dotfiles/alias.sh"

if [[ $(uname) = "Linux" ]]; then
    export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
    export PATH="/home/linuxbrew/.linuxbrew/sbin:$PATH"
fi

# Install zplugin
if [ ! -e "$HOME/.zplugin/bin/zplugin.zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
fi

# Load zplugin
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

autoload -Uz compinit
compinit
zplugin cdreplay -q

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

zplugin light zsh-users/zsh-completions
