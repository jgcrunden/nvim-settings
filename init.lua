vim.opt.number = true
vim.opt.ts = 4
vim.opt.sts = 4
vim.opt.sw = 4

vim.g.mapleader = " "
vim.wo.relativenumber = true

vim.api.nvim_create_autocmd("FileType", {
	command = "setlocal ts=2 sts=2 sw=2 expandtab",
	pattern = { "yaml", "markdown", "xml", "css" },
})

vim.api.nvim_set_keymap("t", "<Esc>", '<C-\\><C-n>', { noremap = true }) -- Set <Esc> as shortcut to exit insert mode in terminal
vim.api.nvim_set_keymap('n', '<leader>tb', '<Cmd>below split | resize 10 | terminal<CR>a', { noremap = true }) -- open small terminal in below split

vim.opt.mouse = ""
