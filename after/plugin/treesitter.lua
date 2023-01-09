
require('nvim-treesitter.configs').setup {
    ensure_installed = {'latex', 'python', 'javascript'},
    highlight = { 
        enable = true,
        disable = {'latex'},
    },

}
