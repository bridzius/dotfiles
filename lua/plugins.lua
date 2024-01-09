return {
	{
		'folke/tokyonight.nvim',
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
	-- https://github.com/folke/tokyonight.nvim
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	-- https://github.com/nvim-lualine/lualine.nvim
	{
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup({
				shortcut_type = 'number',
				hide = {
					statusline = false
				}
			})
		end,
		dependencies = { {'nvim-tree/nvim-web-devicons'}}
	},
	-- https://github.com/nvimdev/dashboard-nvim
	'leafgarland/typescript-vim',
	-- https://github.com/leafgarland/typescript-vim
	{ 
		'neoclide/coc.nvim', 
		branch = 'release' 
	},
	-- https://github.com/neoclide/coc.nvim
	{ 
		'nvim-treesitter/nvim-treesitter', 
		build = function() 
			require("nvim-treesitter.install").update({ with_sync = true })() 
		end,
	},
	{
		'nvim-treesitter/nvim-treesitter',
		opts = {
			ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query'},
			sync_install = true,
			ignore_install = { 'javascript' },
			highlight = {
				enable = true,
				disable = { 'c' },
				disable = function(lang, buff)
					local max_filesize = 100 * 1024
					local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
					if ok and stats and stats.size > max_filesize then
						return true
					end
				end,
				additional_vim_regex_highlighting = false
			},
			autotag = {
				enable = true
			}
		}
	},
	-- https://github.com/nvim-treesitter/nvim-treesitter
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
    		"telescope.nvim",
    		dependencies = {
      			"nvim-telescope/telescope-fzf-native.nvim",
      			build = "make",
      			config = function()
        			require("telescope").load_extension("fzf")
      			end,
    		}
  	}
	-- https://github.com/nvim-telescope/telescope.nvim
}
