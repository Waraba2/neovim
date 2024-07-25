return {
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
		},
    debug = false,
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					-- Lua
					null_ls.builtins.formatting.stylua,

					-- Tailwind CSS
					null_ls.builtins.formatting.prettier,

					-- Python
					null_ls.builtins.formatting.black,
					null_ls.builtins.formatting.isort,

					-- Spell checking
					null_ls.builtins.completion.spell,

					-- JavaScript (requires none-ls-extras.nvim)
					require("none-ls.diagnostics.eslint"),
				},
			})

			vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
		end,
	},
}
