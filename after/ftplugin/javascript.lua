
local set = vim.keymap.set

set('n', '<leader>r', ':botright10sp <CR> :term node % <CR>', {buffer = true, silent = true})
