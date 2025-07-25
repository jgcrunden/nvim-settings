return {
  -- Lazy.nvim will automatically clone and manage this plugin
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Make sure it loads before other colorschemes
    config = function()
      vim.cmd.colorscheme("catppuccin") -- Set the colorscheme
  end,
  -- ... other plugins
}
