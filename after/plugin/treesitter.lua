
require('nvim-treesitter.configs').setup {
    ensure_installed = {'latex', 'python', 'javascript', 'lua'},
    highlight = { 
        enable = true,
        disable = {"latex"},
        additional_vim_regex_highlighting = false,
    },
}
