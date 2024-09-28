require 'nvim-treesitter.install'.prefer_git = false
require'nvim-treesitter.install'.compilers = { "clang", "gcc" }
require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query" },

	sync_install = true,

	highlight = {
		enable = true,

		additional_vim_regex_highlighting = false,
	},
}
