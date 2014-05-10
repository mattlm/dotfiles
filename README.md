dotfiles
---------

    $ git clone git@github.com:mattlm/dotfiles.git ~/.dotfiles

## vimrc setup

    $ ln -s .dotfiles/.vimrc ~/
    $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    $ vim +PluginInstall +qall

## todo
* add script to do symlinks
