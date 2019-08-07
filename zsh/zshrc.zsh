export LANG='en_US.UTF-8'
export HOSTNAME="$(hostname -s)"

source ~/dotfiles/prezto/init.zsh
source ~/dotfiles/zsh/aliases.zsh

export GOPATH="$HOME/Go"

export PATH="$HOME/Go/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

if [[ -n $(find ~/dotfiles/zsh/local/ -name "$HOSTNAME*.zsh") ]]; then
    source ~/dotfiles/zsh/local/$HOSTNAME*.zsh
fi

source <(kubectl completion zsh)
