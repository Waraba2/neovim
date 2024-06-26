-- general keymaps

vim.keymap.set("i", "jk", "<ESC>") -- allows me to get off insert mode using jk

vim.keymap.set("n", "<leader>nh", ":nohl<CR>") -- clears search highlights in normal mode

vim.keymap.set("n", "x", '"_x') -- In normal mode don't save deleted character in the register

vim.keymap.set("n", "<leader>+", "<C-a>") -- Increment
vim.keymap.set("n", "<leader>-", "<C-x>") -- Decrement numbers

vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width and height
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab
