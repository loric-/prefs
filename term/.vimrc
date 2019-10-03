set nocompatible
set nobackup
set nowritebackup
set noswapfile

" Explorer settings
let g:netrw_liststyle=3
let g:netrw_localrmdir='rm -r'

set grepprg=grep\ -RIin\ --exclude=tags\ $*\ 2>/dev/null

set dir=/tmp
set backupdir=/tmp

set scrolloff=3    " 3 lines displayed around cursor for scroll

" No delay when exiting visual mode
set timeoutlen=1000 ttimeoutlen=0

set listchars=tab:>-,nbsp:.,trail:.,extends:>,precedes:<,eol:$

set ignorecase     " Case insensitive
set wildignorecase " Autocomplete case insensitive
set smartcase      " Enable case sensitivity if search contains upper letter
set wildmenu       " Show possible completions on command line
set hidden         " Enable caching on buffer switch

set background=dark

set novisualbell   " Prevent bell
set noerrorbells   " Prevent bell

" Default tabs count parameters
set tabstop=4
set shiftwidth=4
set expandtab

" Split on the right
set splitright
set splitbelow

" Enable file types and indents
filetype on
filetype plugin on
filetype indent on
set autoindent
set smartindent

" Improve completion
set completeopt=longest,menuone

" Disable syntax color
syntax off

" Common behavior for backspace
set backspace=indent,eol,start

" Autoread file if changes
set autoread
set updatetime=500
if has("autocmd")
    autocmd CursorHold,CursorHoldI * checktime
endif

" Save with sudo
command! W w !sudo tee % > /dev/null

" Reset some colors
highlight SignColumn ctermbg=none
highlight Error ctermbg=none ctermfg=red
highlight Todo ctermbg=none ctermfg=red
highlight Pmenu ctermbg=white
highlight PmenuSel ctermbg=gray ctermfg=black


" govim
if has("autocmd")
    autocmd FileType go nnoremap <buffer> <silent> gd : <C-u>call GOVIMHover()<CR>
    autocmd FileType go nnoremap <buffer> <silent> <C-t> :GOVIMGoToDef<cr>
    autocmd FileType go nnoremap <buffer> <silent> g<C-t> :GOVIMGoToPrevDef<cr>
endif

" Bepo mappings
runtime settings/bepo.vim

" Allow to add additional configuration without needing to commit
runtime settings/local.vim
