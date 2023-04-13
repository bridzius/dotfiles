
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
-- https://github.com/wbthomason/packer.nvim
	use'leafgarland/typescript-vim'
-- https://github.com/leafgarland/typescript-vim
	use {
		'neoclide/coc.nvim', 
		branch = 'release' 
	}
-- https://github.com/neoclide/coc.nvim
	use 'morhetz/gruvbox'
-- https://github.com/morhetz/gruvbox
	use 'neovim/nvim-lspconfig'
-- https://github.com/neovim/nvim-lspconfig
	use {
  		'nvim-tree/nvim-tree.lua',
  		requires = {
    			'nvim-tree/nvim-web-devicons', -- optional
  		},
  		config = function()
    			require("nvim-tree").setup {}
  		end
	}
-- https://github.com/nvim-tree/nvim-tree.lua"
	use 'tpope/vim-commentary'
-- https://github.com/tpope/vim-commentary
	use {
		'junegunn/fzf', 
		run = 'fzf install'
	}
-- https://github.com/junegunn/fzf
	use 'junegunn/fzf.vim'
-- https://github.com/junegunn/fzf.vim
	if packer_bootstrap then
		require('packer').sync()
	end
end)
