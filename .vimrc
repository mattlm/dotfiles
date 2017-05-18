" reload without restarting vim:
" :so $MYVIMRC

" be iMproved
set nocompatible

" required!
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" let Vundle manage itself
" required!
Plugin 'gmarik/vundle'

" original repos on github
Plugin 'tpope/vim-commentary'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails.git'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
"Plugin 'tsaleh/vim-matchit' this is no longer?
Plugin 'vim-scripts/matchit.zip'
Plugin 'scrooloose/nerdtree'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'kien/rainbow_parentheses.vim'

" JS stuff
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'

" vim-scripts repos
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'elzr/vim-json'
Plugin 'airblade/vim-gitgutter'

" molokai theme
Plugin 'tomasr/molokai'

" non github repos
Plugin 'git://git.wincent.com/command-t.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" required!
filetype plugin indent on

" remap control + B to show CtrlP buffer
nnoremap <c-b> :CtrlPBuffer<CR>

"no swap files
set noswapfile

"always show the status line
set laststatus=2

syntax on

" 256 color term
set t_Co=256

if filereadable(expand("~/.vim/bundle/molokai/colors/molokai.vim"))
  colorscheme molokai
endif

" show line numbers
"set number

" Show matching brace
set showmatch
set ruler
set hlsearch
set incsearch
set autoindent
set smartindent

" spaces, not tabs
set expandtab

" tabs are drawn as 2 spaces
set shiftwidth=2

" soft tabs are 2 spaces
set softtabstop=2

" override tab settings for php
augroup tab_settings
  autocmd!
  autocmd FileType php setlocal noexpandtab shiftwidth=2 tabstop=2
augroup END

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
autocmd BufRead *.rhtml set filetype=eruby

" ========== Searching ==========
" if searchterm is lowercase, search is case insensitive
" if searchterm contains uppercase, search is case sensitive
set ignorecase
set smartcase
" Don't use smartcase when searching using * and #
nnoremap * /\<<C-R>=expand('<cword>')<CR>\><CR>
nnoremap # ?\<<C-R>=expand('<cword>')<CR>\><CR>

" Speedy
set ttyfast

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" http://vim.wikia.com/wiki/Great_wildmode/wildmenu_and_console_mouse
set wildmenu
set wildmode=list:longest,full

" keeps me from fat-fingering :x and :q
map :X :x
map :Q :q

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
