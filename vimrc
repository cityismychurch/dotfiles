set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'wincent/command-t'
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
set colorcolumn=80
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
nnoremap Q <nop>
let g:SimpylFold_docstring_preview=1
" au BufNewFile,BufRead *.py
"     \ set tabstop=4
"     \ set softtabstop=4
"     \ set shiftwidth=4
"     \ set textwidth=79
"     \ set expandtab
"     \ set autoindent
"     \ set fileformat=unix
" au BufNewFile,BufRead *.js, *.html, *.css
"     \ set tabstop=2
"     \ set softtabstop=2
"     \ set shiftwidth=2
set encoding=utf-8
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
let python_highlight_all=1
syntax on
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
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
colo molokai
autocmd BufNewFile,BufRead *.json set ft=javascript
set noesckeys
set nocompatible
