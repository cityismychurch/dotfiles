" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin 'nvie/vim-flake8'
" Plugin 'scrooloose/syntastic'
" Plugin 'wincent/command-t'
Plugin 'felixhummel/setcolors.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'godlygeek/tabular'
Plugin 'mojodna/vim-conque'
Plugin 'neomake/neomake'
Plugin 'scrooloose/nerdtree'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
call vundle#end()

set tags+=tags;$HOME
" airline
let g:airline_powerline_fonts = 1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'et'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" command t
" set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg

" neomake
let g:neomake_python_flake8_maker = {
    \ 'args': ['--ignore=E221,E241,E272,E251,W702,E203,E201,E202',  '--format=default'],
    \ 'errorformat':
        \ '%E%f:%l: could not compile,%-Z%p^,' .
        \ '%A%f:%l:%c: %t%n %m,' .
        \ '%A%f:%l: %t%n %m,' .
        \ '%-G%.%#',
    \ }
let g:neomake_python_enabled_makers = ['flake8']

" powerline
let g:Powerline_symbols="fancy"

" Generic
set encoding=utf-8
filetype plugin indent on
syntax on
let &t_Co=256

" remaps
command WQ wq
command Wq wq
command W w
command Q q
nnoremap <space> za
nnoremap Q <nop>

" SimplyFold
let g:SimpylFold_docstring_preview=1

" YouCompleteMe
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_autoclose_preview_window_after_completion=1

"" python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

" TODO Move
let g:rehash256 = 1
let g:tex_flavor='latex'
let python_highlight_all=1

" NERDTree
let NERDTreeIgnore=['\.hdf5$', '\.pyc$', '\.swp$', '\~$'] "ignore files in NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Whitespace
" Show trailing whitespace:
" :match ExtraWhitespace /\s\+$/
" Show trailing whitespace and spaces before a tab:
" :match ExtraWhitespace /\s\+$\| \+\ze\t/
" Show trailing whitespace, except when typing at end of line
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+\%#\@<!$/
:autocmd InsertLeave * redraw!

" Generic
set colorcolumn=80
set foldmethod=indent
set foldlevel=99
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
colo gruvbox
let g:gruvbox_contrast_dark='hard'
autocmd BufNewFile,BufRead *.json set ft=javascript
set noesckeys
set nocompatible
