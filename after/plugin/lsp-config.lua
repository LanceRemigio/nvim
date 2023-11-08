local req = require('lspconfig')




req.tsserver.setup{
}

-- req.texlab.setup{
--   texlab = {
--     auxDirectory = ".",
--     bibtexFormatter = "texlab",
--     build = {
--       args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
--       executable = "latexmk",
--       forwardSearchAfter = false,
--       onSave = false
--     },
--     chktex = {
--       onEdit = false,
--       onOpenAndSave = false
--     },
--     diagnosticsDelay = 300,
--     formatterLineLength = 80,
--     forwardSearch = {
--       args = {}
--     },
--     latexFormatter = "latexindent",
--     latexindent = {
--       modifyLineBreaks = false
--     }
--   }
-- }

req.pyright.setup{
    
}


vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  end,
})
