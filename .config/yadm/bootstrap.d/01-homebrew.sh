#!/bin/sh

system_type=$(uname -s)


if ! command -v brew >/dev/null 2>&1; then
  echo "Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | sed '/command_as_root$/d')"

  echo "Setup homebrew"
  echo ''                                                               >> ${HOME}/.zshrc
  echo '# Homebrew'                                                     >> ${HOME}/.zshrc
  echo '# -------------------------------'                              >> ${HOME}/.zshrc

  if [ "$system_type" = "Darwin" ]; then
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"'                    >> ${HOME}/.zshrc
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"'                    >> ${HOME}/.bashrc
  elif [ "$system_type" = "Linux" ]; then
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"'       >> ${HOME}/.zshrc
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"'       >> ${HOME}/.bashrc
  fi
fi

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



if [ "$system_type" = "Darwin" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ "$system_type" = "Linux" ]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

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
  tmux


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
  brew install \
    zsh \
    zsh-completions \
    zsh-git-prompt
fi
