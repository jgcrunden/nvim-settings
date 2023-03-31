vim.opt.number = true
vim.opt.ts = 4
vim.opt.sts = 4
vim.opt.sw = 4

vim.api.nvim_create_autocmd("FileType", {
	command = "setlocal ts=2 sts=2 sw=2 exptandtab",
	pattern = { "yaml", "markdown" },
})

vim.g.mapleader = " "
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3

