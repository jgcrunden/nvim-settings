return {
	{
		"folke/trouble.nvim",
		opts = {
			virtual_text = false,
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = "",
					[vim.diagnostic.severity.WARN] = "",
					[vim.diagnostic.severity.INFO] = "󰋼",
					[vim.diagnostic.severity.HINT] = "󰌵",
				},
			},
			float = {
				border = "rounded",
				format = function(d)
					return ("%s (%s) [%s]"):format(d.message, d.source, d.code or d.user_data.lsp.code)
				end,
			},
			underline = true,
			jump = {
				float = true,
			},
		},
		init = function()
			vim.diagnostic.config {
				virtual_text = false,
				signs = {
					text = {
						[vim.diagnostic.severity.ERROR] = "",
						[vim.diagnostic.severity.WARN] = "",
						[vim.diagnostic.severity.INFO] = "󰋼",
						[vim.diagnostic.severity.HINT] = "󰌵",
					},
				},
				float = {
					border = "rounded",
					format = function(d)
						return ("%s (%s) [%s]"):format(d.message, d.source, d.code or d.user_data.lsp.code)
					end,
				},
				underline = true,
				jump = {
					float = true,
				},
			}
		end,
		keys = {
			{
				"gl",
				"<cmd>Trouble diagnostics toggle filter.buf=0<cr>"
			},
			{
				"gL",
				"<cmd>Trouble diagnostics toggle<cr>"
			},
			{
				"<leader>xq",
				"<cmd>Trouble qflist toggle<cr>",
			},
			{
				"<leader>xl",
				"<cmd>Trouble loclist toggle<cr>"
			},
			{
				"gR",
				"<cmd>Trouble lsp toggle focus=false win.position=right<cr>"
			}

		}

	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {}
	}
}
