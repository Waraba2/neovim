return {

	{
		"williamboman/mason.nvim",
		config = function()
			local configs = require("mason")
			configs.setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			local configs = require("mason-lspconfig")
			configs.setup({
				ensure_installed = {
				"lua_ls",
				"tsserver"
				},
				automatic_installation = true
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities() -- snipets config

			local configs = require("lspconfig")
			configs.lua_ls.setup({
				capabilities = capabilities
			})
			configs.tsserver.setup({
				capabilities = capabilities
			})
		end
	},
	{
		'nvimdev/lspsaga.nvim',
		dependencies = {
			'nvim-treesitter/nvim-treesitter', -- optional
			'nvim-tree/nvim-web-devicons',     -- optional
		},
		config = function()
			local configs = require('lazy')
			configs.setup({})
		end
	}
}
