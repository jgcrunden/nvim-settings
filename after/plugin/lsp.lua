require("mason").setup()
require("mason-lspconfig").setup()
local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<C-a>", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})

-- Automatically attach installed language servers.
local lspconfig = require('lspconfig')
require('mason-lspconfig').setup_handlers({
	function(server_name)
		if server_name ~= "jdtls" then
			local capabilities = require('cmp_nvim_lsp').default_capabilities();
			lspconfig[server_name].setup({
				on_attach = lsp_attach,
				capabilities = capabilities,
			})
		end
	end,
})

vim.keymap.set('n', 'ge', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', 'gl', vim.diagnostic.setloclist)
vim.keymap.set('n', 'gL', vim.diagnostic.setqflist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('UserLspConfig', {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf }
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
		vim.keymap.set('n', 'go', vim.lsp.buf.type_definition, opts)
		vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
		vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, opts)
		vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
		vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts) -- Not sure what this one does
		vim.keymap.set('n', '<leader>f', function()
			vim.lsp.buf.format { async = true }
		end, opts)
	end,
})

