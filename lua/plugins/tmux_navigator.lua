return {
	{ "christoomey/vim-tmux-navigator" },
	{
		"aserowy/tmux.nvim", -- navigate tmux - nvim
		config = function()
			local tmux = require("tmux")
			tmux.setup({
				navigation = {
					-- cycles to opposite pane while navigating into the border
					cycle_navigation = true,

					-- enables default keybindings (C-hjkl) for normal mode
					enable_default_keybindings = false,

					-- prevents unzoom tmux when navigating beyond vim border
					persist_zoom = false,
				},
			})

			-- plugin keymaps
			local options = { noremap = true }
			vim.keymap.set("n", "<C-h>", [[<cmd>lua require("tmux").move_left()<cr>]], options)
			vim.keymap.set("n", "<C-j>", [[<cmd>lua require("tmux").move_bottom()<cr>]], options)
			vim.keymap.set("n", "<C-k>", [[<cmd>lua require("tmux").move_top()<cr>]], options)
			vim.keymap.set("n", "<C-l>", [[<cmd>lua require("tmux").move_right()<cr>]], options)
		end,
	},
}
