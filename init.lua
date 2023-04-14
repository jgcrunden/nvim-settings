vim.opt.number = true
vim.opt.ts = 4
vim.opt.sts = 4
vim.opt.sw = 4

vim.g.mapleader = " "

vim.api.nvim_create_autocmd("FileType", {
	command = "setlocal ts=2 sts=2 sw=2 expandtab",
	pattern = { "yaml", "markdown", "xml" },
})

vim.api.nvim_create_autocmd("TermOpen", {
	command = "setlocal nonumber",
	pattern = "*",
})

vim.api.nvim_set_keymap("t", "<Esc>", '<C-\\><C-n>', { noremap = true }) -- Set <Esc> as shortcut to exit insert mode in terminal
vim.api.nvim_set_keymap('n', '<leader>tb', '<Cmd>below split | resize 10 | terminal<CR>a', { noremap = true }) -- open small terminal in below split


vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3

vim.opt.mouse = ""
