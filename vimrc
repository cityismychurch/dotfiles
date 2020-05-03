" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'felixhummel/setcolors.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim',
Plugin 'mileszs/ack.vim'
call vundle#end()

" 2017-10-20
" Switch to fzf re: https://statico.github.io/vim3.html
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>
set tags+=tags;$HOME

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" airline
let g:airline_powerline_fonts = 1

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

" YouCompleteMe
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_autoclose_preview_window_after_completion=1

" TODO Move
let g:rehash256 = 1
let g:tex_flavor='latex'
let python_highlight_all=1

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
set background=dark
autocmd BufNewFile,BufRead *.json set ft=javascript
set noesckeys
set nocompatible

nnoremap <silent> <Leader>s :call fzf#run({
\   'down': '40%',
\   'sink': 'botright split' })<CR>

nnoremap <silent> <Leader>v :call fzf#run({
\   'right': winwidth('.') / 2,
\   'sink':  'vertical botright split' })<CR>

function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader>b :call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m',
\   'down':    len(<sid>buflist()) + 2
\ })<CR>

nnoremap <silent> <Leader>e :Files<CR>
nnoremap <silent> <Leader>g :GFiles<CR>
