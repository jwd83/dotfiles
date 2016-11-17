" enter the current millenium, don't try to be vi compatible
set nocompatible

""""""""""""""""""""""""""""""""""""""
" UI SETTINGS
""""""""""""""""""""""""""""""""""""""
" colo default
"try to keep 3 lines on screen
set scrolloff=3
" Highlight current line
" set cursorline
" Line Numbers
set number
set relativenumber
" Status bar coloring
hi StatusLine ctermbg=15 ctermfg=4
au InsertEnter * hi StatusLine ctermbg=15 ctermfg=1
au InsertLeave * hi StatusLine ctermbg=15 ctermfg=4
" Line number coloring
hi LineNr ctermbg=8 ctermfg=4
" Tweaks for browsing
" let g:netrw_banner=0        " disable annoying banner
let g:netrw_liststyle=3     " tree view
" Status bar
set laststatus=2
set ruler
" Syntax Highlighting
syntax enable
filetype plugin on

"""""""""""""""""""""""""""""""""""""
" GENERAL SETTINGS
"""""""""""""""""""""""""""""""""""""
" Tabs & spaces
set tabstop=2               " number of visual spaces per tab
set softtabstop=2           " number of spaces in tab when editing
set autoindent              " copy indenting from prior line
set expandtab               " expand tabs to spaces
set shiftwidth=2            " using indent operations in visual mode use this much whitepsace
" utf-8 setup
set encoding=utf-8                      " The encoding displayed.
set fileencoding=utf-8                  " The encoding written to file.
" line endings
set ff=unix
" Whitespace characters
set list
set listchars=tab:»\ ,trail:·,extends:»,precedes:«
" Search options
set ignorecase                          " Do case insensitive matching
" Auto reload if file is unedited
set autoread
" File finding
set path+=**
set wildmenu

"""""""""""""""""""""""""""""""""""""
" CUSTOM FUNCTIONS / MAPPINGS
"""""""""""""""""""""""""""""""""""""
" F5 = clear whitespace
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" intelligent tab keymap
nnoremap tn :tabnew<Space>

nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

"""""""""""""""""""""""""""""""""""""
" PLUGINS
"""""""""""""""""""""""""""""""""""""
set runtimepath^=~/.vim/bundle/ctrlp.vim

