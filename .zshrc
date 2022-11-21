# Environment
# -------------------------------
export LANG=en_US.UTF-8 \
       PATH="/usr/local/sbin:/usr/local/bin:${PATH}"
       CLICOLOR=1 \
       LSCOLORS=gxfxcxdxbxegedabagacad \
       TERM=xterm-256color


# Alias
# -------------------------------
alias proxy="\
  HTTP_PROXY=http://127.0.0.1:7890 \
  HTTPS_PROXY=http://127.0.0.1:7890 \
  ALL_PROXY=socks5://127.0.0.1:7890 \
  \$@
"
alias allproxy="\
  HTTP_PROXY=http://127.0.0.1:7890 \
  HTTPS_PROXY=http://127.0.0.1:7890 \
  ALL_PROXY=socks5://127.0.0.1:7890 \
  \$@
"
alias proxychains4="proxychains4 -q"


# Homebrew
# -------------------------------
eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_AUTO_UPDATE=1


# ZI
# -------------------------------
source "$HOME/.zi/bin/zi.zsh"
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi

zi light-mode for \
    z-shell/z-a-meta-plugins \
    @annexes @zunit

zi pack for ls_colors

zi wait lucid for \
    OMZL::functions.zsh \
    OMZL::clipboard.zsh \
    OMZL::completion.zsh \
    OMZL::correction.zsh \
    atinit"setopt auto_cd" \
        OMZL::directories.zsh \
    atinit"
        HISTSIZE=1000000
        SAVEHIST=1000000
    " \
    OMZL::history.zsh \
    OMZL::misc.zsh \
    OMZL::spectrum.zsh \
    OMZL::termsupport.zsh

zi wait lucid for \
    OMZP::colored-man-pages \
    OMZP::extract \
    OMZP::fasd \
    OMZP::git \
    OMZP::gitignore \
    OMZP::mosh \
    OMZP::screen

zi wait pack atload=+"zicompinit; zicdreplay" for system-completions


# P10K
# -------------------------------
zi depth'1' light-mode for atload'source ~/.p10k.zsh' romkatv/powerlevel10k
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Rust
# -------------------------------
. "$HOME/.cargo/env"


# Squirrel (RIME)
# -------------------------------
export PATH="/Library/Input Methods/Squirrel.app/Contents/MacOS:$PATH"
export rime_dir="$HOME/Library/Rime"
export plum_dir="${rime_dir}/plum"


# Kubectl
# -------------------------------
export KUBE_EDITOR="nvim"
source <(kubectl completion zsh)
alias k=kubectl
alias kc=kubectl
complete -o default -F __start_kubectl k
complete -o default -F __start_kubectl kc


# Helm
# -------------------------------
source <(helm completion zsh)


# N
# -------------------------------
export N_NODE_MIRROR=https://npmmirror.com/mirrors/node
