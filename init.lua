vim.opt.number = true
vim.wo.relativenumber = true

vim.opt.smartindent = false -- Turn off vim's builtin smartindent so it's handled by treesitter instead
vim.opt.ts = 4 -- Set size of tab to 4 columns

vim.g.mapleader = " "

vim.api.nvim_set_keymap("t", "<Esc>", '<C-\\><C-n>', { noremap = true }) -- Set <Esc> as shortcut to exit insert mode in terminal
vim.api.nvim_set_keymap('n', '<leader>tb', '<Cmd>below split | resize 10 | terminal<CR>a', { noremap = true }) -- open small terminal in below split

vim.opt.mouse = "" -- Disable mouse
