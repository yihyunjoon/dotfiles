# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
[[ "$(uname)" == "Darwin" ]] && export SSH_AUTH_SOCK=/Users/yihyunjoon/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Prevent ~/.zsh_sessions creation (Disable macOS Terminal sessions)
SHELL_SESSIONS_DISABLE=1

# History configuration
export HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000
setopt EXTENDED_HISTORY      # Save timestamps
setopt HIST_FIND_NO_DUPS     # Hide duplicates during history search (keep all entries)
setopt HIST_REDUCE_BLANKS    # Remove unnecessary whitespace

# Shell options
setopt COMPLETE_IN_WORD      # Allow completion in the middle of a word
setopt ALWAYS_TO_END         # Move cursor to the end after completion

# Aliases
source ~/dotfiles/zsh/aliases.zsh

# zsh-z data file location
export _Z_DATA="${XDG_DATA_HOME:-$HOME/.local/share}/z/data"

# Load antidote plugin manager
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load

# Completion system (after antidote)
autoload -Uz compinit
compinit

# Completion styles
zstyle ':completion:*' menu select                       # Enable menu selection
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'      # Case-insensitive matching
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"  # Apply colors

# To customize prompt, run `p10k configure` or edit ~/dotfiles/zsh/.p10k.zsh.
[[ ! -f ~/dotfiles/zsh/.p10k.zsh ]] || source ~/dotfiles/zsh/.p10k.zsh

export PATH="$HOME/.config/emacs/bin:$PATH"

. "$HOME/.local/share/../bin/env"
export PATH="/opt/homebrew/opt/postgresql@18/bin:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"

# pnpm
export PNPM_HOME="/Users/yihyunjoon/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
