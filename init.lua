vim.opt.number = true
vim.wo.relativenumber = true

vim.opt.ts = 4 -- Set size of tab to 4 columns
vim.opt.sw = 4
vim.opt.sts = 4
vim.api.nvim_create_autocmd("FileType", {
	command = "setlocal ts=2 sts=2 sw=2 expandtab",
	pattern = { "dart", "yaml", "markdown", "xml", "css" },
})

vim.g.mapleader = " "

vim.api.nvim_set_keymap("t", "<Esc>", '<C-\\><C-n>', { noremap = true })                                       -- Set <Esc> as shortcut to exit insert mode in terminal
vim.api.nvim_set_keymap('n', '<leader>tb', '<Cmd>below split | resize 10 | terminal<CR>a', { noremap = true }) -- open small terminal in below split

vim.opt.mouse = ""                                                                                             -- Disable mouse
