local set = vim.keymap.set
local localset = vim.opt_local
vim.opt_local.spell = true
localset.relativenumber = false
localset.cursorline = false
vim.opt_local.number = false
vim.cmd[[:NoMatchParen]]


set('n', '<leader>r', ':VimtexCompile<cr>', {buffer = true })


