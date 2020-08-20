" C++

function! s:cpp()
  "setlocal path+=/usr/include
  "setlocal path+=/usr/local/include
  "setlocal path+=/usr/include/c++/9.2.0
  "setlocal path+=/usr/include/c++/9.2.0/x86_64-pc-linux-gnu
endfunction

augroup vimrc-cpp
  autocmd!
  autocmd FileType cpp call s:cpp()
augroup END
