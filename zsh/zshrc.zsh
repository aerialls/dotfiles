export LANG='en_US.UTF-8'
export HOSTNAME="$(hostname -s)"

source ~/dotfiles/prezto/init.zsh
source ~/dotfiles/zsh/aliases.zsh

# Go
export GOPATH="$HOME/Go"
export PATH="$HOME/Go/bin:$PATH"

# Others
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/python@3.9/bin:$PATH"
export PATH="/usr/local/opt/node@15/bin:$PATH"

[[ -f "~/dotfiles/zsh/local.zsh" ]] && source ~/dotfiles/zsh/local.zsh

source <(kubectl completion zsh)
