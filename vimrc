autocmd BufNewFile,BufRead *.json set ft=javascript
execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set softtabstop=4
set expandtab
set clipboard=unnamed
set nowrap
set mouse=a
set backspace=indent,eol,start
let &t_Co=256
syn on
let g:Powerline_symbols="fancy"
source $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
source /usr/share/vim/vim73/macros/matchit.vim
source ~/.vim/indent/matlab.vim
source ~/.vim/ftplugin/matlab.vim
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
let g:rehash256 = 1
colo molokai
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
