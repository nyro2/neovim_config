" vim-plug
call plug#begin()
"=== ColorScheme
Plug 'jeetsukumaran/vim-nefertiti', {'do': 'cp colors/* ~/.config/nvim/colors/'}
Plug 'sjl/badwolf', {'do': 'cp colors/* ~/.config/nvim/colors/'}
Plug 'aereal/vim-colors-japanesque', {'do': 'cp colors/* ~/.config/nvim/colors/'}
Plug 'morhetz/gruvbox', {'do': 'cp colors/* ~/.config/nvim/colors/'}
"=== General
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdtree'
Plug 'thinca/vim-quickrun'
"=== Edit
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'easymotion/vim-easymotion'
Plug 'whatyouhide/vim-lengthmatters'
"=== Git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
"=== Terminal Mode
Plug 'kassio/neoterm'
"=== LSP/Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"=== C++
Plug 'bfrg/vim-cpp-modern'
"=== Rust
Plug 'rust-lang/rust.vim'
"=== Clojure
Plug 'ctrlpvim/ctrlp.vim'
Plug 'guns/vim-sexp',    {'for': 'clojure'}
Plug 'liquidz/vim-iced', {'for': 'clojure'}
call plug#end()

"  インストール判定関数
let s:plug = {
      \ "plugs": get(g:, 'plugs', {})
      \ }

function! s:plug.is_installed(name)
  return has_key(self.plugs, a:name) ? isdirectory(self.plugs[a:name].dir) : 0
endfunction

" lexima
call lexima#add_rule({'char': '<TAB>', 'at': '\%#)', 'leave': 1})
call lexima#add_rule({'char': '<TAB>', 'at': '\%#"', 'leave': 1})
call lexima#add_rule({'char': '<TAB>', 'at': '\%#''', 'leave': 1})
call lexima#add_rule({'char': '<TAB>', 'at': '\%#]', 'leave': 1})
call lexima#add_rule({'char': '<TAB>', 'at': '\%#}', 'leave': 1})

" nerdtree
if s:plug.is_installed("nerdtree")
    nmap <leader>n :NERDTreeToggle<cr>
    " ファイルを開いたらNERDTreeを閉じる
    let g:NERDTreeQuitOnOpen=1
    " 隠しファイルを表示
    let g:NERDTreeShowHidden=1
    " 非表示ファイル
    let g:NERDTreeIgnore=['\.git$', '\.clean$', '\.swp$', '\.bak$', '\~$']
    " NERDTreeを同時に閉じる
    autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif
endif

" vim-fugitive
if s:plug.is_installed("vim-fugitive")
    nnoremap [fugitive]  <Nop>
    nmap <space>g [fugitive]
    nnoremap <silent> [fugitive]s :Gstatus<CR><C-w>T
    nnoremap <silent> [fugitive]a :Gwrite<CR>
    nnoremap <silent> [fugitive]c :Gcommit-v<CR>
    nnoremap <silent> [fugitive]b :Gblame<CR>
    nnoremap <silent> [fugitive]d :Gdiff<CR>
    nnoremap <silent> [fugitive]m :Gmerge<CR>
endif

" vim-quickrun
if s:plug.is_installed("vim-quickrun")
    nmap <Leader>r <plug>(quickrun)
endif

" vim-iced
if s:plug.is_installed("vim-iced")
    let g:iced_enable_default_key_mappings = v:true
endif

" vim-lengthmatters
if s:plug.is_installed("vim-lengthmatters")
    let g:lengthmatters_start_at_column = 121
endif
