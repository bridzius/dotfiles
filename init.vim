set nocompatible

" plugins
call plug#begin('~/.vim/plugged')

Plug 'leafgarland/typescript-vim' "https://github.com/leafgarland/typescript-vim
Plug 'neoclide/coc.nvim', { 'branch': 'release' } "https://github.com/neoclide/coc.nvim
Plug 'morhetz/gruvbox' "https://github.com/morhetz/gruvbox
Plug 'neovim/nvim-lspconfig' "https://github.com/neovim/nvim-lspconfig
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'} "https://github.com/ms-jpq/chadtree
Plug 'tpope/vim-commentary' "https://github.com/tpope/vim-commentary

call plug#end()
set number

" colorscheme
syntax on
colorscheme gruvbox
filetype on
filetype plugin indent on

cnoreabbrev W w
cnoreabbrev Wq wq
cnoreabbrev Q q
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev qw wq
