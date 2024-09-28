
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'
	use 'm4xshen/autoclose.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		requires = { {'nvim-lua/plenary.nvim'} }
	}


	use({
		'morhetz/gruvbox',
		as = 'gruvbox',
		config = function()
			vim.cmd('colorscheme gruvbox')
		end})

		use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
		use('nvim-treesitter/playground')

		use {
			'VonHeikemen/lsp-zero.nvim',
			branch = 'v3.x',
			requires = {
				{'williamboman/mason.nvim'},
				{'williamboman/mason-lspconfig.nvim'},

				-- LSP Support
				{'neovim/nvim-lspconfig'},
				-- Autocompletion
				{'hrsh7th/nvim-cmp'},
				{'hrsh7th/cmp-nvim-lsp'},
				{'L3MON4D3/LuaSnip'},
			}
		}
	end)
