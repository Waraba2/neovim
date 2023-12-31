vim.g.mapleader = " "
local keymap = vim.keymap -- for concisenesss

-- general keymaps

keymap.set("i", "jk", "<ESC>") -- allows me to get off insert mode using jk

keymap.set("n", "<leader>nh", ":nohl<CR>") -- clears search highlights in normal mode

keymap.set("n", "x", '"_x') -- In normal mode don't save deleted character in the register

keymap.set("n", "<leader>+", "<C-a>") -- Increment
keymap.set("n", "<leader>-", "<C-x>") -- Decrement numbers

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width and height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- plugin keymaps
local options = { noremap = true }
keymap.set("n", "<C-h>", [[<cmd>lua require("tmux").move_left()<cr>]], options)
keymap.set("n", "<C-j>", [[<cmd>lua require("tmux").move_bottom()<cr>]], options)
keymap.set("n", "<C-k>", [[<cmd>lua require("tmux").move_top()<cr>]], options)
keymap.set("n", "<C-l>", [[<cmd>lua require("tmux").move_right()<cr>]], options)

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-neo-tree
keymap.set("n", "<leader>e", ":Neotree reveal<cr>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- dap / dap-python
keymap.set("n", "<Leader>db", function()
	require("dap").toggle_breakpoint()
end)
keymap.set("n", "<Leader>dpr", function()
	require("dap-python").test_method()
end)
