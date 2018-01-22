if is_macos; then
    alias afk="pmset displaysleepnow"
fi

alias git-sync-upstream="git checkout master && git fetch upstream && git merge upstream/master && git push origin master"
