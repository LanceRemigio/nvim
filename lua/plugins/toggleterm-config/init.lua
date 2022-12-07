require("toggleterm").setup({
  -- size can be a number or function which is passed the current terminal
size = 15,
open_mapping = [[<c-\>]],
hide_numbers = true, 
shade_filetype = {},
shading_factor = 1, 
start_in_insert = true, 
insert_mappings = true, 
persist_size = true, 
direction = 'horizontal',
close_on_exit = true, 
shell = vim.o.shell,
float_opts = {
    border = 'single',
    winblend = 0,
    highlights = { 
        border = 'Normal',
        background = 'Normal',
    },
},
})
-- toggle term 
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end
