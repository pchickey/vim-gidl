function! s:setf(filetype) abort
  if &filetype !=# a:filetype
    let &filetype = a:filetype
  endif
endfunction

" Gidl Schema
au BufNewFile,BufRead *.gidl			call s:setf('gidl')

