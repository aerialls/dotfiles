command_exists () {
  type "$1" &> /dev/null;
}

is_linux () {
    [[ $('uname') == 'Linux' ]];
}

is_macos () {
    [[ $('uname') == 'Darwin' ]]
}

source ~/dotfiles/zgen/zgen.zsh
source ~/dotfiles/zsh/aliases.zsh

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

# Remove username@hostname
prompt_context() {}
