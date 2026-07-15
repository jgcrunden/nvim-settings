return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main", -- Switch from 'master' to 'main'
    lazy = false,
    build = ":TSUpdate",
    config = function()
        -- 1. Initialize the new top-level module (configs.setup is deprecated)
        require("nvim-treesitter").setup()

        local ensure_installed = { "c", "lua", "vim", "vimdoc", "query" }
        local installed = require("nvim-treesitter.config").get_installed()
        local to_install = vim.tbl_filter(function(parser)
            return not vim.tbl_contains(installed, parser)
        end, ensure_installed)

        if #to_install > 0 then
            require("nvim-treesitter").install(to_install)
        end

        vim.api.nvim_create_autocmd("FileType", {
            callback = function()
                pcall(vim.treesitter.start)
            end,
        })
    end,
}
