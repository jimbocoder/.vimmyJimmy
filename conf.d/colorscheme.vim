syntax on
set background=dark
let g:solarized_termcolors=256
let g:solarized_hitrail   =   1
colorscheme solarized

set numberwidth=1
if version >= 703
  set colorcolumn=120
endif
highlight OverLength ctermfg=239 ctermbg=235 guifg=Yellow
match OverLength /\%121v.\+/
