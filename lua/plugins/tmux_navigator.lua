return {
  {
    "aserowy/tmux.nvim", -- navigate tmux - nvim
    config = function()
      local tmux = require("tmux")
      tmux.setup({
        navigation = {
          cycle_navigation = true,
          enable_default_keybindings = true,  -- Enables default keybindings (C-hjkl)
          persist_zoom = false,
        },
      })
    end,
  },
}

