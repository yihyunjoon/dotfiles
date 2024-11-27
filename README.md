# Hyunjoon's dotfiles

## Installation

Clone this repository

```sh
git clone https://github.com/yihyunjoon/dotfiles.git
```

### Brewfile

#### Install [brew](https://brew.sh/)

```ssh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

#### Install packages

On macOS

```sh
brew bundle
```

### Zsh

#### Change default shell to zsh

```sh
chsh -s `which zsh`
```

#### Link `.zshrc`

```sh
ln -s ~/dotfiles/.zshrc ~/.zshrc
```

### Neovim

#### Install [vim-plug](https://github.com/junegunn/vim-plug)

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

#### Link `.vimrc`

```sh
ln -s ~/dotfiles/.vimrc ~/.config/nvim/init.vim
```

## _Thanks to_...

-   [yous](https://github.com/yous/dotfiles)
-   [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
