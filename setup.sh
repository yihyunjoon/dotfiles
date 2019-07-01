#!/usr/bin/env zsh

source color.sh

echo "${BOLD}Welcome to Setup.sh${RESET}"

if command -v brew > /dev/null; then
    echo "brew is installed"
else
    echo "Installing brew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if command -v zsh > /dev/null; then
    echo "zsh is installed"
else
    echo "Installing zsh"
    brew install zsh
fi

echo "${ITALIC}bye.${RESET}"
