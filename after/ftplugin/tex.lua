local set = vim.keymap.set
local localset = vim.opt_local
vim.opt_local.spell = true
localset.relativenumber = false
localset.cursorline = false


vim.g.tex_fold_enabled = true

set('n', '<leader>c', ':VimtexCompile<cr>', {buffer = true })


