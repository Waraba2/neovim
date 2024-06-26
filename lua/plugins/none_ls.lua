return {
	{
		'nvimtools/none-ls.nvim',
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
		},
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					-- lua
					null_ls.builtins.formatting.stylua,

					-- tailwindcss
					null_ls.builtins.formatting.prettier,

					-- python
					null_ls.builtins.formatting.black,
					null_ls.builtins.formatting.isort,

					-- spell
					null_ls.builtins.completion.spell,

					-- Javascript
					require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
				},
			})

			vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
		end
	}
}
