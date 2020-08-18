syntax on

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
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'

call plug#end()


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
let g:airline_theme='simple'

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

"run python shell with f9
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!clear' <CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!clear' <CR>:exec '!python' shellescape(@%, 1)<CR>

autocmd FileType lisp map <buffer> <F9> :w<CR>:exec '!clear' <CR>:exec '!clisp' shellescape(@%, 1)<CR>
autocmd FileType lisp imap <buffer> <F9> <esc>:w<CR>:exec '!clear; clisp' shellescape(@%, 1)<CR>

autocmd FileType cpp map <buffer> <F9> :w<CR>:exec '!clear' <CR>:exec '!g++ % && ./a.out' shellescape(@%, 1)<CR>
autocmd FileType cpp imap <buffer> <F9> <esc>:w<CR>:exec '!clear' <CR>:exec '!g++ % && ./a.out' shellescape(@%, 1)<CR>

autocmd FileType c imap  <F9> :w <CR>:!clear <CR> :!gcc % && ./a.out <CR>
