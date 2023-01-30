
require('nvim-treesitter.configs').setup {
    ensure_installed = {'latex', 'python', 'javascript', 'lua'},
    highlight = { 
        enable = true,
        disable = {'latex'}
    },

}
