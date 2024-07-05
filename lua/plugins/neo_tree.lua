return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    vim.keymap.set("n", "<leader>e", ":Neotree reveal<cr>")
    local neo_tree = require("neo-tree")
    neo_tree.setup({
      filesystem = {
        filtered_items = {
          visible = true, -- when true, they will just be displayed differently than normal items
          always_show_by_pattern = { -- uses glob style patterns
            ".gitignored",
            ".env*",
          },
        },
      },
    })
  end,
}
