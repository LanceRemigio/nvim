local set = vim.keymap.set
local localset = vim.opt_local
vim.opt_local.spell = true
localset.relativenumber = false
localset.cursorline = false



set('n', '<leader>r', ':VimtexCompile<cr>', {buffer = true })


