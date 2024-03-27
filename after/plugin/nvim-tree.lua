-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = function()
			return math.floor(vim.opt.columns:get())
		end
	},
	renderer = {
		group_empty = true,
		highlight_git = true,
		root_folder_modifier = ":t",
		icons = {
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
			},
			glyphs = {
				default = "",
				symlink = "",
				git = {
					unstaged = "U",
					staged = "S",
					unmerged = "UM",
					renamed = "R",
					deleted = "D",
					untracked = "",
					ignored = "I",
				},
				folder = {
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
				},
			},
		},
	},
	filters = {
		dotfiles = true,
	},
	actions = {
		open_file = {
			quit_on_open = true,
		}
	}
})

vim.api.nvim_set_keymap('n', '<leader>pv', '<cmd>NvimTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ps', '<cmd>NvimTreeFocus<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>pf', '<cmd>NvimTreeFindFile<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>pc', '<cmd>NvimTreeCollapse<CR>', { noremap = true })
