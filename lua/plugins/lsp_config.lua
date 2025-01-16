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
          "tsserver",
          "svelte",
          "tailwindcss",
          "prismals",
          "bashls",
          "clangd",
          "cssls",
          "tailwindcss",
          "gopls",
          "html",
          "ocamllsp",
          'intelephense', -- for PHP
          'prismals', -- for Prisma
          "sqlls",
          "biome",
          "emmet_language_server"
				},
				automatic_installation = true
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      { "antosha417/nvim-lsp-file-operations", config = true },
      { "folke/neodev.nvim", opts = {} },
    },

    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities() -- snipets config

      local configs = require("lspconfig")

      local on_attach = function(client, bufnr)
        local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
        local opts = { noremap = true, silent = true }

        -- Keybindings for LSP actions
        buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
      end

      configs.lua_ls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })
      configs.tsserver.setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })

      configs.emmet_language_server.setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })

    end,
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
