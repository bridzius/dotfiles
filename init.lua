-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("plugins");

vim.cmd([[
set number
" colorscheme
syntax on
" colorscheme gruvbox
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
]])

-- empty setup using defaults
require("nvim-tree").setup()
