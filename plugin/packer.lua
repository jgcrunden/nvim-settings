local packer = require('packer')
packer.startup(function(use)
	--[[ If shallow clone is not permitted
	packer.config.git.depth = nil
	packer.config.git.subcommands.install = "clone"
	]]
	--

	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}

	-- Fuzzy finder
	use {
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use { "nvim-treesitter/nvim-treesitter" }

	use { "theprimeagen/harpoon" }

	use { "catppuccin/nvim", as = "catppuccin" }

	-- LSP
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig",
		"neovim/nvim-lspconfig",
		"simrat39/rust-tools.nvim"
	}

	-- Autocompletion
	use {
		'hrsh7th/nvim-cmp',
		'hrsh7th/cmp-nvim-lsp',
	}

	use {
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
		'rafamadriz/friendly-snippets'
	}

	use { "mfussenegger/nvim-jdtls" }

	use { "lewis6991/gitsigns.nvim" }
end)
