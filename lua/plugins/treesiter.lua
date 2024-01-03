
return {
  {
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
    config = function()
      local status, treesitter = pcall(require, "nvim-treesitter.configs")
      if not status then
        return
      end

      -- configure treesitter
      treesitter.setup({
        -- enable syntax highlighting
        highlight = {
          enable = true,
        },
        -- enable indentation
        indent = { enable = true },
        -- enable autotagging (w/ nvim-ts-autotag plugin)
        autotag = { enable = true },
        -- auto install above language parsers
        auto_install = true,
      })
    end
},

-- auto closing
{"windwp/nvim-autopairs"},-- autoclose parens, brackets, quotes, etc...
{ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }, -- autoclose tags
}
