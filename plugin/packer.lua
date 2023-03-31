local packer = require('packer')
packer.startup(function(use)
	--[[ If shallow clone is not permitted
	packer.config.git.depth = nil
	packer.config.git.subcommands.install = "clone"
	]]--

	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use { "nvim-treesitter/nvim-treesitter" }

	use { "ellisonleao/gruvbox.nvim" }

	-- LSP
	use { 
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig",
		"neovim/nvim-lspconfig"
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
end)
