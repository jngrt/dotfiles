set nocompatible               " be iMproved
filetype off                   " required!

autocmd BufRead,BufNewFile  *.md,*.txt,*.TXT set filetype=markdown

set rtp+=~/.vim/bundle/vundle/
set rtp+=/Users/Shared/Projects/dotfiles/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"My bundles
Bundle 'xoria256.vim'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'goatslacker/mango.vim'
Bundle 'tomasr/molokai.git'
Bundle 'JavaScript-Indent'
Bundle 'The-NERD-tree'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'loremipsum'
Bundle 'wincent/Command-T.git'
" Bundle 'YankRing.vim' 
Bundle 'yankstack'
Bundle 'fugitive.vim'
Bundle 'unimpaired.vim'
Bundle 'nelstrom/vim-markdown-folding.git'
Bundle 'gregsexton/MatchTag.git'
Bundle 'sjbach/lusty.git' 
"use <leader>lj to switch buffers 
Bundle 'tomtom/tcomment_vim.git'
Bundle 'davidhalter/jedi-vim.git'
Bundle 'flazz/vim-colorschemes'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"Other config
set guioptions-=r
set guioptions-=T
let mapleader =","
"set guifont=Ubuntu\ Mono\ 10
set guifont=Menlo\ Regular:h14
" set background=dark
syntax on
set t_Co=256
colorscheme xoria256 
map <leader>d :execute 'NERDTreeToggle '.getcwd()<CR>

"Indentation /tabs
set expandtab
set shiftwidth=4
set softtabstop=4

"buffer cycling
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

set backupdir=~/tmp


"nnoremap <silent> <F11> :YRShow<CR>
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_older_paste

" set lines=45
" set columns=130

set number

" hiding a buffer with unsafed changes becomes possible
set hidden


if has("statusline") && !&cp
    set laststatus=2  " always show the status bar

    " Start the status line
    set statusline=%f\ %m\ %r

    " Finish the statusline
    set statusline+=Line:%l/%L\ [%p%%]
    set statusline+=\ Col:%v
    set statusline+=\ Buf:#%n
    set statusline+=\ [%b][0x%B]
endif

set laststatus=2
" Show the current command in the lower right corner
set showcmd

" Show the current mode
set showmode

set mouse=nicr
