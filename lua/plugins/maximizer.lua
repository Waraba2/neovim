return {
  {
    "szw/vim-maximizer",
    config = function()
      -- vim-maximizer
      vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")
    end,
  }, -- maximizes and restores surrent window
}
