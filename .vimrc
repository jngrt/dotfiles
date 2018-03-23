" https://davidosomething.com/blog/vim-for-javascript/
" https://gthub.com/davidosomething/dotfiles/tree/master/vim
" https://bluz71.github.io/2017/05/15/vim-tips-tricks.html#launch-browser-with-gx-command


" todo:
" - sytastic
" - youcompleteme
" - :https://github.com/Shougo/deoplete.nvim ?
" - 

set shell=sh
set nocompatible               " be iMproved
filetype off                   " required!

autocmd BufRead,BufNewFile  *.md,*.txt,*.TXT set filetype=markdown

call plug#begin('~/dotfiles/.vim/plugged')

" THEMES
" Plug 'junegunn/seoul256.vim'
" Plug 'xoria256.vim'
" Plug 'tomasr/molokai'
" Plug 'chriskempson/vim-tomorrow-theme'
" Plug 'oceanlight'
" Plug 'summerfruit256.vim'
" Plug 'AutumnLeaf'
" Plug 'https://github.com/float168/vim-colors-cherryblossom.git'
" Plug 'https://github.com/lifepillar/vim-wwdc17-theme.git'
" Plug 'https://github.com/Rykka/colorv.vim.git'
" Plug 'https://github.com/noahfrederick/vim-hemisu.git'
Plug 'NLKNguyen/papercolor-theme'
" Plug 'jonathanfilip/vim-lucius'

" BOTTOMBAR
"Plug 'bling/vim-airline'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'bling/vim-bufferline'
Plug 'itchyny/lightline.vim'

" FILES/BUFFERS
"Plug 'scrooloose/nerdtree'
" Lusty Juggler - use <leader>lj to switch buffers
"Plug 'sjbach/lusty'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-eunuch'

" EDITING
Plug 'editorconfig-vim'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'trailing-whitespace'
Plug 'gregsexton/MatchTag'
Plug 'junegunn/vim-easy-align'
Plug 'tomtom/tcomment_vim'

" SEARCH
"Plug 'rking/ag.vim'
"Plug 'dkprice/vim-easygrep'
"Plug 'yegappan/grep'

" JAVASCRIPT
"Plug 'maksimr/vim-jsbeautify'
"Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim'


" LANGUAGES
Plug 'groenewege/vim-less'
Plug 'tomlion/vim-solidity'
Plug 'briancollins/vim-jst'
Plug 'wavded/vim-stylus'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'


"Plug 'yankstack'
"Plug 'Syntastic'
"Plug 'valloric/youcompleteme'

" Add plugins to &runtimepath
call plug#end()

filetype plugin indent on     " required!

" airline config
" let g:airline#extensions#tabline#enabled = 1

" lightline config
let g:lightline = { 'colorscheme': 'PaperColor' }

"Other config
set guioptions-=r
set guioptions-=T
let mapleader =","
"set guifont=Ubuntu\ Mono\ 10
"set guifont=Inconsolata:h16
"set guifont=Inconsolata\ 10
" set guifont=Anonymous\ Pro\ for\ Powerline\ Regular\ 12
set guifont=Hack\ 11
set background=light
syntax on
set t_Co=256

"disable beeping
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_checkers = ['eslint']

colorscheme PaperColor

"map <leader>d :execute 'NERDTreeToggle '.getcwd()<CR>
" disable arrows for NERDTree
"let g:NERDTreeDirArrows=0

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

" set number
set relativenumber

" hiding a buffer with unsafed changes becomes possible
set hidden
set laststatus=2
" Show the current command in the lower right corner
set showcmd


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

set noshowmode "not needed, bc lightline shows mode

" JAVASCRIPT 
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"
set conceallevel=1
map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>


" NETRW / FILE EXPLORER
" https://shapeshed.com/vim-netrw/
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_browsex_viewer= "xdg-open"




" wildmenu
set wildmenu
set wildmode=full


