local ls = require('luasnip')
local types = require('luasnip.util.types')
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})

ls.config.set_config {
history = true,
updateevents = "TextChanged, TextChangedI",
enable_autosnippets = true,
store_selection_keys = '<s-v>',
ext_opts = {
    [types.choiceNode] = {
        active = {
            virt_text = {{"", "Error" }}
        },
    },
},
}
    
vim.keymap.set( 'i', "kk", function()
    if ls.expand_or_jumpable() then
            ls.expand_or_jump()
    end
            end, {noremap = true, silent = true})

-- Jumping backwards 
vim.keymap.set( 'i', 'jj', function()
        if ls.jumpable(-1) then
            ls.jump(-1)
        end
    end, {noremap = true, silent = true})
-- listing choice of snippets to choose from
vim.keymap.set('i', '<c-l>', function()
        if ls.choice_active() then
            ls.change_choice(1)
        end
    end)

vim.keymap.set('n', '<Leader><leader>s', ':lua require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})<CR>')

