" Get the absolute path of the file you're reading these words in.
" Handles symlinks and stuff. Lifted from:
" http://stackoverflow.com/questions/4976776/how-to-get-path-to-the-current-vimscript-being-executed
let $vimmyJimmyPath = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" Append our stuff to vim's realtimepath so it loads after the defaults,
" allowing us to override things.
set rtp+=$vimmyJimmyPath

" Load Vundle Bundles
runtime vundlerc

" Actually load our preferences!
runtime! conf.d/*.vim
