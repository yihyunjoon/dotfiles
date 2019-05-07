echo "Loading dotfiles .zshrc"

export NVM_LAZY_LOAD=true

### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

### zplugin begin
zplugin light "zdharma/fast-syntax-highlighting"
zplugin ice pick"async.zsh" src"pure.zsh"
zplugin light "sindresorhus/pure"
zplugin ice "rupa/z" pick"z.sh"
zplugin light "rupa/z"
zplugin light "lukechilds/zsh-nvm"
zplugin ice as"program" make'!' atclone'./direnv hook zsh > zhook.zsh' atpull'%atclone' pick"direnv" src"zhook.zsh"
zplugin light direnv/direnv
### zplugin end

### alias begin
alias ls="exa"
alias l="ls -al"
alias nv="nvim"
### alias end
