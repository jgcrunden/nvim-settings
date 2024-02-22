require('gitsigns').setup({
	on_attach = function()
		local gs = package.loaded.gitsigns
		vim.keymap.set('n', '<leader>h[', gs.prev_hunk)
		vim.keymap.set('n', '<leader>h]', gs.next_hunk)

		vim.keymap.set('n', '<leader>ha', gs.stage_hunk)
		vim.keymap.set('n', '<leader>hA', gs.stage_buffer)

		vim.keymap.set('n', '<leader>hr', gs.reset_hunk)
		vim.keymap.set('n', '<leader>hR', gs.reset_buffer)

		vim.keymap.set('n', '<leader>hp', gs.preview_hunk)

		vim.keymap.set('n', '<leader>hb', function() gs.blame_line { full = true } end)
		vim.keymap.set('n', '<leader>hB', gs.toggle_current_line_blame)
	end
})
