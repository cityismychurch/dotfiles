source $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim
let g:Powerline_symbols="fancy"
execute pathogen#infect()
colo molokai
set backspace=indent,eol,start
autocmd BufNewFile,BufRead *.json set ft=javascript
let g:rehash256 = 1
let &t_Co=256
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set softtabstop=4
set expandtab
set clipboard=unnamed
set nowrap
set mouse=a
syn on
set laststatus=2
source /usr/share/vim/vim73/macros/matchit.vim
source ~/.vim/indent/matlab.vim
source ~/.vim/ftplugin/matlab.vim
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
filetype plugin indent on
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
command WQ wq
command Wq wq
command W w
command Q q
autocmd BufEnter *.m compiler mlint
