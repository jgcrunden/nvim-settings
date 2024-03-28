local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader>hf", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>f1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>f2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>f3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>f4", function() harpoon:list():select(4) end)
