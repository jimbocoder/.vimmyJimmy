set expandtab
set hlsearch
set wildmode=list:longest,full
let mapleader=","
"set expandtab
"set number
"set paste

autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType php setlocal shiftwidth=4 tabstop=4

map <C-J> :bnext!<CR>
map <C-K> :bprev!<CR>
map <C-L> :tabn!<CR>
map <C-H> :tabp!<CR>

map <C-N> :bd<CR>
"mnemonic Nuke

set directory=~/.vimbax//   " where to save .swp files ('//' is intentional, see help)

set scrolloff=3                 " start scrolling 3 lines before end
set sidescrolloff=3             " same, but for columns
set pastetoggle=<F2>

