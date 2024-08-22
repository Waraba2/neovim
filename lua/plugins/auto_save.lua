return {
  "Pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup {}
    vim.keymap.set("n", "<leader>n", ":ASToggle<CR>", { noremap = true, silent = true })
  end,
}
