call plug#begin('~/.vim/plugged')
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'felixhummel/setcolors.vim'
Plug 'VundleVim/Vundle.vim'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim',
Plug 'mileszs/ack.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
call plug#end()

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
colorscheme gruvbox
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

" https://github.com/neoclide/coc.nvim
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

xmap <leader>t :TagbarToggle<CR>
nmap <leader>t :TagbarToggle<CR>
