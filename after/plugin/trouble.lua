require('trouble').setup()

-- Lua
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.api.nvim_set_keymap("n", "<leader>gl", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>gL", "<cmd>Trouble diagnostics toggle<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble qflist toggle<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist toggle<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", {silent = true, noremap = true})
