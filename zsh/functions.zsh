command_exists () {
  type "$1" &> /dev/null;
}

is_linux () {
    [[ $('uname') == 'Linux' ]];
}

is_macos () {
    [[ $('uname') == 'Darwin' ]]
}
