#!/bin/zsh

system_type=$(uname -s)

if [ "$system_type" = "Darwin" ]; then
  if [ ! -d "${HOME}/.zi" ]; then
    sh -c "$(curl -fsSL git.io/get-zi)" -- -i skip -b main
  fi

  zi pack for zsh-bin
fi
