execute pathogen#infect()
source $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim
" CtrlP searching
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
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
let g:Powerline_symbols="fancy"
let g:rehash256 = 1
let &t_Co=256
let g:tex_flavor='latex'
set backspace=indent,eol,start
set clipboard=unnamed
set expandtab
set mouse=a
set nowrap
set softtabstop=4
syn on
set laststatus=2
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set grepprg=grep\ -nH\ $*
set showcmd
set noesckeys
colo molokai
autocmd BufNewFile,BufRead *.json set ft=javascript
set nocompatible
