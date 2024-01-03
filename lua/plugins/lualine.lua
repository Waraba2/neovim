local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- status line
return {
  "nvim-lualine/lualine.nvim",
  config = function ()
    local lualine_gruvbox_dark = require("lualine.themes.gruvbox_dark")

    local new_colors = {
      blue = "#65D1FF",
      green = "#3EFFDC",
      violet = "#FF61EF",
      yellow = "#FFDA7B",
      black = "#000000",
    }

    -- change nightfly theme colors
    --lualine_gruvbox_dark.normal.a.bg = new_colors.blue
    --lualine_gruvbox_dark.insert.a.bg = new_colors.green
    --lualine_gruvbox_dark.visual.a.bg = new_colors.violet
    lualine_gruvbox_dark.command = { -- because command mode don't have a theme
      a = {
        gui = "bold",
        bg = new_colors.yellow,
        fg = new_colors.black,
      },
    }
    require("lualine").setup({
      options = {
        theme = lualine_gruvbox_dark,
      },
    })
  end
} -- uses dev icons
