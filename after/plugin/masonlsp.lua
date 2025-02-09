require('mason').setup()

require('mason-lspconfig').setup({
    ensure_installed = {'pyright'}
})

local lspconfig = require('lspconfig')


lspconfig.ts_ls.setup({})
