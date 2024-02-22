local packer = require('packer')
packer.startup(function(use)
	--[[ If shallow clone is not permitted
	packer.config.git.depth = nil
	packer.config.git.subcommands.install = "clone"
	]]
	--

	-- Packer can manage itself
	use { 'wbthomason/packer.nvim' }

	-- File explorer (to replace built-in netrw)
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}

	-- Fuzzy finder
	use {
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' }
	}

	-- Pinning files and commands
	use { "theprimeagen/harpoon" }

	-- Colour scheme
	use { "catppuccin/nvim", as = "catppuccin" }

	-- LSP
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig",
		"neovim/nvim-lspconfig",
		"simrat39/rust-tools.nvim",
		"mfussenegger/nvim-jdtls"
	}

	-- Syntax highlighting
	use { "nvim-treesitter/nvim-treesitter" }

	-- Autocompletion
	use {
		'hrsh7th/nvim-cmp',
		'hrsh7th/cmp-nvim-lsp',
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
		'rafamadriz/friendly-snippets'
	}


	-- Git integration
	use { "lewis6991/gitsigns.nvim" }

	-- File info footer
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	-- Pretty Diagnostics
	use { "folke/trouble.nvim" }
end)
