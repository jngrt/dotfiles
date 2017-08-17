set nocompatible               " be iMproved
filetype off                   " required!

autocmd BufRead,BufNewFile  *.md,*.txt,*.TXT set filetype=markdown

call plug#begin('~/dotfiles/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'xoria256.vim'
Plug 'tomasr/molokai'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
"Plug 'yankstack'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'gregsexton/MatchTag'
Plug 'sjbach/lusty'
" use <leader>lj to switch buffers
Plug 'tomtom/tcomment_vim'
Plug 'Syntastic'
Plug 'vim-jsbeautify'
Plug 'maksimr/vim-jsbeautify'
Plug 'groenewege/vim-less'
Plug 'editorconfig-vim'
Plug 'trailing-whitespace'
Plug 'yegappan/grep'
Plug 'mxw/vim-jsx'
"Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'rking/ag.vim'
Plug 'dkprice/vim-easygrep'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'oceanlight'
Plug 'summerfruit256.vim'
Plug 'AutumnLeaf'
Plug 'tomlion/vim-solidity'
Plug 'vimoutliner/vimoutliner'
Plug 'jonathanfilip/vim-lucius'
Plug 'NLKNguyen/papercolor-theme'
Plug 'https://github.com/float168/vim-colors-cherryblossom.git'
Plug 'https://github.com/lifepillar/vim-wwdc17-theme.git'
Plug 'https://github.com/Rykka/colorv.vim.git'
Plug 'https://github.com/noahfrederick/vim-hemisu.git'
"https://github.com/itchyny/lightline.vim 
Plug 'briancollins/vim-jst'
Plug 'wavded/vim-stylus'
" Add plugins to &runtimepath
call plug#end()

filetype plugin indent on     " required!

" airline config
let g:airline#extensions#tabline#enabled = 1


"Other config
set guioptions-=r
set guioptions-=T
let mapleader =","
"set guifont=Ubuntu\ Mono\ 10
"set guifont=Inconsolata:h16
"set guifont=Inconsolata\ 10
set guifont=Anonymous\ Pro\ for\ Powerline\ Regular\ 12
set background=light
syntax on
set t_Co=256

"disable beeping
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

let g:syntastic_javascript_checkers = ['jshint']

"colorscheme summerfruit256
colorscheme PaperColor

map <leader>d :execute 'NERDTreeToggle '.getcwd()<CR>
" disable arrows for NERDTree
let g:NERDTreeDirArrows=0

"Indentation /tabs
set expandtab
set shiftwidth=2
set softtabstop=2

"For autocompletion in vaxe
set autowrite

"buffer cycling
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

set backupdir=~/tmp


"nnoremap <silent> <F11> :YRShow<CR>
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_older_paste

"allow for pasting using ctrl-shift-v
"set clipboard=unnamed
set clipboard=unnamedplus "now use y/p to copy to/yank from system clipboard
" vnoremap <C-S-c> "*y "use ctrl-shift-c in visual/select mode
" noremap <C-S-v> "*p "use ctrl-shift-v in normal mode to paste

"Quicksave
noremap <Leader>s :update<CR>

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

" Make mouse work in iTerm
" option a - to make yanking of mouse selection work
set mouse=nicra

" Mouse in tmux and in terminal change cursorshape
" tmux will only forward escape sequences to the terminal if surrounded by a
" DCS sequence
"
" http://sourceforge.net/mailarchive/forum.php?thread_name=AANLkTinkbdoZ8eNR1X2UobLTeww1jFrvfJxTMfKSq-L%2B%40mail.gmail.com&forum_name=tmux-users
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


 " map <c-f> :call JsBeautify()<cr>
  " or
 " autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
  " for html
 " autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
  " for css or scss
 " autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>


  "nnoremap <Leader>f :let @c = line('.')<CR>:let @d = col('.')<CR>:w<CR>:%!~/jsbeautifier.py %<CR>:w<CR>:call cursor (@c, @d)<CR>
  nnoremap <Leader>j :let @c = line('.')<CR>:let @d = col('.')<CR>:w<CR>:%!js-beautify --config ~/.jsbeautifyrc %<CR>:w<CR>:call cursor (@c, @d)<CR>
  nnoremap <Leader>h :let @c = line('.')<CR>:let @d = col('.')<CR>:w<CR>:%!js-beautify --css %<CR>:w<CR>:call cursor (@c, @d)<CR>
  nnoremap <Leader>c :let @c = line('.')<CR>:let @d = col('.')<CR>:w<CR>:%!js-beautify --html %<CR>:w<CR>:call cursor (@c, @d)<CR>
