source ~/dotfiles/zsh/functions.zsh
source ~/dotfiles/zsh/aliases.zsh

source ~/dotfiles/zgen/zgen.zsh

if ! zgen saved; then
    zgen oh-my-zsh

    zgen oh-my-zsh plugins/brew
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/git-extras
    zgen oh-my-zsh plugins/docker

    zgen load unixorn/git-extra-commands

    if is_macos; then
        zgen load chriskempson/base16-iterm2
    fi

    zgen oh-my-zsh themes/agnoster

    zgen save
fi

# Custom settings pear workstation
HOSTNAME="$(hostname -s)"

if [ -f ~/dotfiles/zsh/local/$HOSTNAME.zsh ]; then
    source ~/dotfiles/zsh/local/$HOSTNAME.zsh
fi

if is_macos; then
    export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
    export PATH="$PATH:/usr/local/opt/python@2/bin"
fi

# Go specific stuff
export GOPATH="$HOME/Go"
export PATH="$PATH:$HOME/Go/bin"

# Remove prompt
prompt_context() {}
