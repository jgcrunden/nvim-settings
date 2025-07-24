require('trouble').setup()
-- config diagnostics including signs in margin
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
-- Lua
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.api.nvim_set_keymap("n", "gl", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "gL", "<cmd>Trouble diagnostics toggle<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble qflist toggle<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist toggle<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", {silent = true, noremap = true})
