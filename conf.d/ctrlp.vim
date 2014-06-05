" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10'


" The default key, just here for reference.
let g:ctrlp_map = '<c-p>'

" Search filesystem, buffers and MRU (most-recently-used, most-awesome) at the same time.
let g:ctrlp_cmd = 'CtrlPMixed'

let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

" Wait until I stop typing before searching
let g:ctrlp_lazy_update = 250

