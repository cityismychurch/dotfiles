set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'wincent/command-t'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
call vundle#end()
execute pathogen#infect()
source $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim
source ~/.vim/indent/matlab.vim
source ~/.vim/ftplugin/matlab.vim
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
filetype plugin indent on
command WQ wq
command Wq wq
command W w
command Q q
autocmd BufEnter *.m compiler mlint
let &t_Co=256
let g:Powerline_symbols="fancy"
let g:rehash256 = 1
let g:tex_flavor='latex'
set backspace=indent,eol,start
set cindent
set clipboard=unnamed
set expandtab
set expandtab
set grepprg=grep\ -nH\ $*
set laststatus=2
set mouse=a
set nowrap
set number
set shiftwidth=4
set showcmd
set softtabstop=4
set tabstop=4
syn on
set noesckeys
colo molokai
autocmd BufNewFile,BufRead *.json set ft=javascript
set nocompatible
