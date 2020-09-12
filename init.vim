"ColorScheme
colorscheme badwolf
set termguicolors

" Display
set number
set ruler
set showtabline=2
set noshowmode "for lightline
set guioptions-=r "hide vertical scroll bars
set guioptions-=l
set guioptions-=R
set guioptions-=L
set guioptions-=b "hide horizontal scroll bar
set scrolloff=5
set cursorline
hi clear CursorLine

" Utility
set clipboard+=unnamedplus
set hls
set noswapfile
set nobackup
set hidden
set autoread
set history=100

" Formatting
set fileformats=unix,dos,mac
set fileencodings=ucs-bombs,utf-8,euc-jp,cp932
set ambiwidth=double
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Search
set ignorecase
set smartcase
set wrapscan

" Window Management
set splitright

" Shortcut Keys
noremap <C-j> <esc>
noremap! <C-j> <esc>
let mapleader="\<Space>"
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
tnoremap <Esc> <C-\><C-n>

" Disable wheel click
map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
map <2-MiddleMouse> <Nop>
imap <2-MiddleMouse> <Nop>
map <3-MiddleMouse> <Nop>
imap <3-MiddleMouse> <Nop>
map <4-MiddleMouse> <Nop>
imap <4-MiddleMouse> <Nop>

" json comment highlight
autocmd FileType json syntax match Comment +\/\/.\+$+

" load config
source $HOME/.config/nvim/tabline.vim
source $HOME/.config/nvim/plugin.vim
source $HOME/.config/nvim/os.vim
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/cpp.vim

