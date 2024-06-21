vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "jk", "<Esc>")

vim.api.nvim_set_keymap('n', '<leader>t', ':20split +terminal<CR>', { noremap = true, silent = true })
