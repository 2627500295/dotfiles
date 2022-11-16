#!/bin/sh

system_type=$(uname -s)

# install homebrew if it's missing
if ! command -v brew >/dev/null 2>&1; then
  echo "Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo "Setup homebrew"
  echo ''                                               >> ${HOME}/.zshrc
  echo '# Homebrew'                                     >> ${HOME}/.zshrc
  echo '# -------------------------------'              >> ${HOME}/.zshrc
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"'      >> ${HOME}/.zshrc
fi

# homebrew bundle
if [ -f "$HOME/.Brewfile" ]; then
  echo "Updating homebrew bundle"
  eval "$(/opt/homebrew/bin/brew shellenv)"
  brew bundle --global
fi

# System specific application
if [ "$system_type" = "Darwin" ]; then
  echo "Install macOS applications"
  brew install --cask \
    iterm2 \
    macvim \
    wechat \
    visual-studio-code \
    google-chrome \
    iterm2 \
    notion \
    telegram \
    squirrel \
    feishu \
    figma \
    zeplin \
    charles
elif [ "$system_type" = "Linux" ]
  echo "Install Linux applications"
fi
