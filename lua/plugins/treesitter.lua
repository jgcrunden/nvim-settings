return {
	"nvim-treesitter/nvim-treesitter",
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",
	opts = function()
		-- require("nvim-treesitter.install").prefer_git = true -- If installing with wget is not possible, (i.e. when working with a GitHub proxy)
		require'nvim-treesitter.configs'.setup {
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			}
		}
	end
}
