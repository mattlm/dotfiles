dotfiles
---------

    $ git clone git@github.com:mattlm/dotfiles.git ~/.dotfiles

## setup

    $ ln -s .dotfiles/.gitconfig ~/
    $ ln -s .dotfiles/.bash_aliases ~/

## vimrc setup

    $ ln -s .dotfiles/.vimrc ~/
    $ git clone git@github.com:gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    $ vim +PluginInstall +qall

## git diff-so-fancy setup

    [https://github.com/so-fancy/diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)

    $ brew install diff-so-fancy

    edit .gitconfig, uncomment the pager line

## todo
* add script to do symlinks
* https://github.com/ntpeters/vim-better-whitespace
