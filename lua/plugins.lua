return {
	-- lua functions that many plugins use
	{ "nvim-lua/plenary.nvim" },
	{ "christoomey/vim-tmux-navigator" },
	{ "aserowy/tmux.nvim" }, -- navigate tmux - nvim

	{ "szw/vim-maximizer" }, -- maximizes and restores surrent window

	-- essentials plugins
	{ "tpope/vim-surround" }, -- paranthesis, quotations etc...
	{ "vim-scripts/ReplaceWithRegister" }, -- replacing text with register content check out docs

	-- icons
	{ "nvim-tree/nvim-web-devicons" },

	{ "hrsh7th/cmp-nvim-lsp" }, -- for autocompletion
	{ "jose-elias-alvarez/typescript.nvim" }, -- additional functionality for typescript server (e.g. rename file & update imports)
	{ "onsails/lspkind.nvim" }, -- vs-code like icons for autocompletion
}
