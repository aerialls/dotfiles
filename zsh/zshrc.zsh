export LANG=en_US.UTF-8

source ~/dotfiles/zsh/functions.zsh
source ~/dotfiles/zsh/aliases.zsh

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Custom settings pear workstation
HOSTNAME="$(hostname -s)"

zplug "dracula/zsh", as:theme

zplug "lib/completion", from:oh-my-zsh
zplug "lib/git", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh

zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh

if [ -f ~/dotfiles/zsh/local/$HOSTNAME.zsh ]; then
    source ~/dotfiles/zsh/local/$HOSTNAME.zsh
fi

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

if is_macos; then
    export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
fi

# Go specific stuff
export GOPATH="$HOME/Go"
export PATH="$PATH:$HOME/Go/bin"
