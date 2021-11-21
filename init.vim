set nocompatible

" plugins
call plug#begin('~/.vim/plugged')

Plug 'leafgarland/typescript-vim' 
"https://github.com/leafgarland/typescript-vim
Plug 'neoclide/coc.nvim', { 'branch': 'release' } 
"https://github.com/neoclide/coc.nvim
Plug 'morhetz/gruvbox' 
"https://github.com/morhetz/gruvbox
Plug 'neovim/nvim-lspconfig' 
"https://github.com/neovim/nvim-lspconfig
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'} 
"https://github.com/ms-jpq/chadtree
Plug 'tpope/vim-commentary' 
"https://github.com/tpope/vim-commentary
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  
"https://github.com/junegunn/fzf
Plug 'junegunn/fzf.vim' 
"https://github.com/junegunn/fzf.vim

call plug#end()
set number

" colorscheme
syntax on
colorscheme gruvbox
filetype on
filetype plugin indent on

" only allow 80 char width and add a column on 80 chars to illuminate.
set textwidth=80
set colorcolumn=80

" make navigation keys navigate to next line on line-ends
set whichwrap+=<,>,h,l

cnoreabbrev W w
cnoreabbrev Wq wq
cnoreabbrev Q q
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev qw wq
