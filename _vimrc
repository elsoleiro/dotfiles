syntax on

set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/vimfiles/undodir
set undofile
set incsearch
set encoding=utf-8
set backspace=indent,eol,start  " more powerful backspacingi

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/vimfiles/plugged')

Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'kien/ctrlp.vim'
Plug 'lyuts/vim-rtags'
Plug 'ycm-core/YouCompleteMe'

call plug#end()

colorscheme gruvbox
set background=dark

"allows rg to detect route, searching for git route and also uses git ignore
if executable('rg')
    let g:rg_derive_route='true'
endif

"ignore files in ctrlp plugin
let g:ctrlp_user_command = ['.git/']
"space as leaderkey (key you press to enter into your command mode)
let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrew_winsize = 25

let g:ctrlp_use_caching = 0

"remap screen movement " " + key
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>n :NERDTree <CR>
nnoremap <leader>u :UndotreeShow<CR>
"firstly splits two windows, then uses :Ex to netrw to where we just were
"then resizes vertically 30
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>

nnoremap <silent> <leader>+ :verticle resize +5<CR>
nnoremap <silent> <leader>- :verticle resize -5<CR>

"ycm
""visual studio error can be fixed by running python install.py with
"msvc=115


nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>

