set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'morhetz/gruvbox' "https://github.com/morhetz/gruvbox
Plug 'neovim/nvim-lspconfig'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'tpope/vim-commentary'

call plug#end()
set number

cnoreabbrev W w
cnoreabbrev Wq wq
cnoreabbrev Q q
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev qw wq
