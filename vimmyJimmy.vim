set expandtab
set hlsearch
let mapleader=","
"set expandtab
"set number
"set paste

set wildmode=list:full
set wildmenu                    " make tab completion for files and buffers act like bash
" " Files to ignore (this is also the list used by ctrlP)
set wildignore+=~/.vim/undofiles/*,~/.vim/backup/*,*.swp  " vim working files
set wildignore+=*.DS_Store          " macs
set wildignore+=*.py?               " python
set wildignore+=*.class             " java
set wildignore+=*.jpg,*.jpeg,*.bmp,*.gif   " images
set wildignore+=*.zip,*.so,*.exe

" j/k to navigate the buffer list sequentially
nmap <C-J> :bnext!<CR>
nmap <C-K> :bprev!<CR>

" L to destroy a buffer
" Mnemonic: later, buffer!
nmap <C-L> :bd<CR>

set directory=~/.vimbax//   " where to save .swp files ('//' is intentional, see help)

set scrolloff=2                 " start scrolling 3 lines before end
set sidescrolloff=2             " same, but for columns

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000


set autoindent

" FUCK
set hidden

" let g:DisableAutoPHPFolding=1

" let php_folding = 0

