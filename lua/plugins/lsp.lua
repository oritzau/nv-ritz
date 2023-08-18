local lsp = require('lsp-zero')

lsp.preset("recommended")

lsp.ensure_installed({
    "rust_analyzer",
    "clangd",
    "pylsp",
    "java_language_server",
    "lua_ls",
})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

local cmp = require('cmp')
-- local cmp_action = require('lsp-zero').cmp_action()
cmp.setup({
    mapping = {
        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({select = false}),
    }
})
