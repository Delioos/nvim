local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- to learn how to use mason.nvim
-- read this: https://github.cotm/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { "rust_analyzer", "tsserver","dockerls","docker_compose_language_service", "graphql", "html", "htmx", "jsonls", "biome", "ltex", "lua_ls", "marksman", "intelephense", "pylsp", "jedi_language_server" , "sqlls", "solang", "solc","tailwindcss", "vuels", "zls", "hydra_lsp"},
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})

vim.api.nvim_set_keymap('n', '<C-v>', '<cmd>lua vim.lsp.buf.accept_completion()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-N>', '<cmd>lua vim.lsp.diagnostic.goto_next_prev(0)<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-n>', '<cmd>lua vim.lsp.diagnostic.goto_next_prev(1)<CR>', {noremap = true, silent = true})
