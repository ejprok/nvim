local lsp = require('lsp-zero')

lsp.preset('recommended')
-- lsp.on_attach(function(client, bufnr)
--   lsp.default_keymaps({buffer = bufnr})
-- end)

-- (Optional) Configure lua language server for neovim
-- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

local cmp = require('cmp')

local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<CR>'] = cmp.mapping.confirm({select = true}),
})

lsp.ensure_installed({
    'tsserver',
    'eslint',
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.setup()

