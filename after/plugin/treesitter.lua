
require('nvim-treesitter.configs').setup {
    ensure_installed = {'latex', 'python', 'javascript', 'lua', 'sql', 'markdown'},
    highlight = { 
        enable = true,
        disable = {"latex"},
        additional_vim_regex_highlighting = false,
    },
}
