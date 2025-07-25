-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import your plugins
		{ import = "plugins" },
	},
	-- automatically check for plugin updates
	checker = { enabled = true },
})

--[[
local packer = require('packer')
packer.startup(function(use)
	packer.config.git.depth = nil
	packer.config.git.subcommands.install = "clone"

	-- File explorer (to replace built-in netrw)
	use {
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}

		"mfussenegger/nvim-jdtls",

	use { "NMAC427/guess-indent.nvim" }

	-- Autocompletion
	use {
		'hrsh7th/nvim-cmp',
		'hrsh7th/cmp-nvim-lsp',
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
		'rafamadriz/friendly-snippets'
	}

	-- Git integration
	use {  }

	-- File info footer
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	-- Pretty Diagnostics
	use { "folke/trouble.nvim" }
	use {  }

	use { "christoomey/vim-tmux-navigator" }
end)
]] --
