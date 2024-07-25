return {
	{
		"MunifTanjim/nui.nvim"
	},
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	--snippets
	{
		"L3MON4D3/LuaSnip", -- snippet engine
		dependencies = {
			"saadparwaiz1/cmp_luasnip", -- for autocompletion
			"rafamadriz/friendly-snippets", -- vscode snippets
		}
	},
	{
		"hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-buffer", -- source for text in buffer
      "hrsh7th/cmp-path", -- source for file system paths
    },
		config = function()
			-- Set up nvim-cmp.
			local cmp = require("cmp")
      local lspkind = require("lspkind")
			-- load vs-code like snippets from plugins (e.g. friendly-snippets)
			require("luasnip/loaders/from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					-- REQUIRED - you must specify a snippet engine
					expand = function(args)
						require('luasnip').lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
				}),
				sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = 'luasnip' },
          { name = "buffer" },
				}),
        -- configure lspkind for vs-code like icons
        formatting = {
          format = lspkind.cmp_format({
            maxwidth = 50,
            ellipsis_char = "...",
          }),
        },
			})
		end,
	},
}
