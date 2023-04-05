local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local cmd_ui = require("harpoon.cmd-ui")
local term = require("harpoon.term")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>hf", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>hc", cmd_ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>f1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>f2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>f3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>f4", function() ui.nav_file(4) end)

vim.keymap.set("n", "<leader>t1", function()
	term.sendCommand(1, 1)
	term.gotoTerminal(1)
	vim.api.nvim_input("a<CR>")
end)

vim.keymap.set("n", "<leader>t2", function()
	term.sendCommand(1, 2)
	term.gotoTerminal(1)
	vim.api.nvim_input("a<CR>")
end)

vim.keymap.set("n", "<leader>t3", function()
	term.sendCommand(1, 3)
	term.gotoTerminal(1)
	vim.api.nvim_input("a<CR>")
end)

vim.keymap.set("n", "<leader>t4", function()
	term.sendCommand(1, 4)
	term.gotoTerminal(1)
	vim.api.nvim_input("a<CR>")
end)

