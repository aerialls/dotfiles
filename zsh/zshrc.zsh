export LANG='en_US.UTF-8'
export HOSTNAME="$(hostname -s)"

source ~/dotfiles/prezto/init.zsh
source ~/dotfiles/zsh/aliases.zsh

export GOPATH="$HOME/Go"
export PATH="$PATH:$HOME/Go/bin"

source ~/dotfiles/zsh/local/$HOSTNAME*.zsh
