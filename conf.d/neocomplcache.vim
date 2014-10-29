let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_max_list = 10

if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

let g:neocomplcache_tags_caching_limit_file_size = 10000000

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" supertab and neocomplcache have conflicting maps for <CR>
" which force you to press <CR> twice when attemting to dismiss
" an autocomplete popup and go to the next line.
" This fixes that.  Lifted from https://github.com/tpope/vim-endwise/issues/22
inoremap <expr><silent> <CR> <SID>my_cr_function()
function! s:my_cr_function()
  return pumvisible() ? neocomplcache#close_popup() . "\<CR>" : "\<CR>"
endfunction

" the preview window makes everything jump around in a distracting way
set completeopt-=preview
