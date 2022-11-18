#!/bin/sh

system_type=$(uname -s)


if [ "$system_type" = "Darwin" ]; then
  if ! command -v brew >/dev/null 2>&1; then
    echo "Installing homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | sed '/command_as_root$/d')"

    echo "Setup homebrew"
    echo ''                                                               >> ${HOME}/.zshrc
    echo '# Homebrew'                                                     >> ${HOME}/.zshrc
    echo '# -------------------------------'                              >> ${HOME}/.zshrc
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"'                      >> ${HOME}/.zshrc
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"'                      >> ${HOME}/.bashrc
  fi


  eval "$(/opt/homebrew/bin/brew shellenv)"


  echo "Homebrew Taps"
  brew tap homebrew/aliases
  brew tap homebrew/bundle
  brew tap homebrew/cask
  brew tap homebrew/cask-drivers
  brew tap homebrew/cask-fonts
  brew tap homebrew/cask-fonts
  brew tap homebrew/core
  brew tap homebrew/services
  brew tap hashicorp/tap
  brew tap openresty/brew
  brew tap shivammathur/php


  echo "Install universal utilities"
  brew install \
    helm \
    kubectl \
    kubectx \
    cilium-cli \
    vim \
    neovim \
    yadm \
    pcre \
    n \
    nvm \
    wget \
    curl \
    git \
    lrzsz \
    htop \
    telnet \
    neofetch \
    tree \
    jq \
    make \
    mysql-client \
    tmux \
    zsh \
    zsh-completions \
    zsh-git-prompt


    echo "Install cask applications"
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
fi