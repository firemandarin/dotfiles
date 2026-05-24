function dotfiles
    /usr/bin/git --git-dir=$HOME/Documents/dotfiles/ --work-tree=$HOME $argv
end
