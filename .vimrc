" autoreload .vimrc if changes are made to it
" autocmd BufWritePost .vimrc source %
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" enter the current millenium, don't try to be vi compatible
set nocompatible

""""""""""""""""""""""""""""""""""""""
" UI SETTINGS
""""""""""""""""""""""""""""""""""""""
" colo default
" try to keep 3 lines on screen
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
let g:netrw_liststyle=3       " tree view
" Status bar
set laststatus=2
set ruler
" Syntax Highlighting
syntax enable
filetype plugin on
set hlsearch                " turn off hlight until next search with :noh
set showmatch               " show matching braces
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
" allow mouse use
set mouse=a

"""""""""""""""""""""""""""""""""""""
" GENERAL SETTINGS
"""""""""""""""""""""""""""""""""""""
" proper backspace
set bs=2
" Tabs & spaces
set autoindent              " copy indenting from prior line
set expandtab               " expand tabs to spaces
set shiftwidth=4            " using indent operations in visual mode use this much whitepsace
set smarttab                " be smart when using tabs
set softtabstop=4           " number of spaces in tab when editing
set tabstop=4               " number of visual spaces per tab
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
set wildmode=longest:full,full
" undo settings
set history=700
set undolevels=700
" use a somewhat less insecure encryption technique
set cm=blowfish2
" Disable temporary files
set nobackup       " no backup files
set nowritebackup  " only in case you don't want a backup file while editing
set noswapfile     " no swap files




"""""""""""""""""""""""""""""""""""""
" CUSTOM FUNCTIONS / MAPPINGS
"""""""""""""""""""""""""""""""""""""
" F5 = clear whitespace
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" F3 = toggle paste mode (disable autoindent fuckery)
set pastetoggle=<F3>

" intelligent tab keymap
nnoremap tn :tabnew<Space>

nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" custom leader key (comma)
let mapleader = ","

" sort selection comma e
vnoremap <Leader>s :sort<CR>

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" better indentation
vnoremap < <gv
vnoremap > >gv

" Quicksave command (control z- normally this would background the process and
" you woule need to receover it with fg)
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
