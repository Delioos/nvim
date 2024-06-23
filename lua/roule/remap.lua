vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "jk", "<Esc>")

vim.api.nvim_set_keymap('n', '<leader>t', ':botright split +terminal<CR> <i> <C-l>', { noremap = true, silent = true })

vim.wo.relativenumber = true




-- full screen current buffer
vim.keymap.set("n", "<leader>f", ":resize 90<CR>", { noremap = true, silent = true })
