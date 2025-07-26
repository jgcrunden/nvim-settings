return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Make sure it loads before other colorschemes
    config = function()
      vim.cmd.colorscheme("catppuccin")
  end,
}
