set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'moll/vim-node'
Plugin 'vim-syntastic/syntastic'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'w0rp/ale'

call vundle#end()       
map <C-n> :NERDTreeToggle<CR>
let macvim_skip_colorscheme=1
let g:ale_linters = {
			\	'typescript': ['tslint'],
			\	'javascript': ['eslint']
			\}
syntax on
" Requires dracula iterm theme from https://draculatheme.com/iterm/
color dracula
cnoreabbrev W w
cnoreabbrev Wq wq
cnoreabbrev Q q
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev qw wq
set expandtab
set shiftwidth=2
set softtabstop=2
set number
set cursorline
filetype indent plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone
