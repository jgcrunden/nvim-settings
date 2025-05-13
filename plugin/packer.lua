local packer = require('packer')
packer.startup(function(use)
	--[[ If shallow clone is not permitted (i.e. when using a GitHub proxy)
	packer.config.git.depth = nil
	packer.config.git.subcommands.install = "clone"
	]]--

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
	use {
		"theprimeagen/harpoon",
		branch = "harpoon2"
	}

	-- Colour scheme
	use { "catppuccin/nvim", as = "catppuccin" }

	-- LSP
	use {
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"simrat39/rust-tools.nvim",
		"mfussenegger/nvim-jdtls",
		"akinsho/flutter-tools.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
	}

	-- Syntax highlighting
	use { "nvim-treesitter/nvim-treesitter" }

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
	use { "lewis6991/gitsigns.nvim" }

	-- File info footer
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	-- Pretty Diagnostics
	use { "folke/trouble.nvim" }

	use { "christoomey/vim-tmux-navigator" }
end)
