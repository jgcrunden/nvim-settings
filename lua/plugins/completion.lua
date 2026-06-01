return {
	'saghen/blink.cmp',
	-- optional: provides snippets for the snippet source
	dependencies = { 'Kaiser-Yang/blink-cmp-dictionary' },
	version = '*',
	opts = {
		keymap = { preset = 'enter' },
		appearance = {
			nerd_font_variant = 'mono'
		},
		signature = {
			enabled = true
		},
		sources = {
			-- FIX 1: Added 'dictionary' to the default sources list
			default = { 'lsp', 'path', 'snippets', 'buffer', 'dictionary' },
			providers = {
				dictionary = {
					module = 'blink-cmp-dictionary',
					name = 'Dict',
					min_keyword_length = 3,
					max_items = 8,
					opts = {
						dictionary_files = function()
							if vim.bo.filetype == 'lilypond' then
								-- FIX 2: Safeguard path resolution
								local dict_path = vim.fn.expand('$LILYDICTPATH')
								if dict_path ~= "" then
									return vim.fn.glob(dict_path .. '/*', true, true)
								end
							end
							return {} -- Return empty table if not lilypond or path missing
						end,
					}
				}
			},
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" }
}
