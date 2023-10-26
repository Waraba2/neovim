local status, tmuxnvim = pcall(require, "tmux-nvim")
if not status then
	return
end

tmuxnvim.setup({
	navigation = {
		-- cycles to opposite pane while navigating into the border
		cycle_navigation = true,

		-- enables default keybindings (C-hjkl) for normal mode
		enable_default_keybindings = false,

		-- prevents unzoom tmux when navigating beyond vim border
		persist_zoom = false,
	},
})
