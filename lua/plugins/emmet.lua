return {
  {
    'mattn/emmet-vim',
    config = function()
      -- Enable only in normal mode
      vim.g.user_emmet_mode = 'n'

      -- Enable for HTML and CSS only
      vim.g.user_emmet_install_global = 0
      vim.cmd([[
        autocmd FileType html,css EmmetInstall
      ]])

    end
  } }
