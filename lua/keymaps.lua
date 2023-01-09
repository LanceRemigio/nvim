local km = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Saving files
km('n', '<C-s>', ':w<CR>', opts)

-- quiting
km('n', '<leader>q', ':q<cr>', {noremap = true})

-- sourcing files 
km('n', '<leader>sf', ':source %<cr>', {noremap = true})

-- navigating through tabs

km('n', '<leader>e',  ':BufferClose<CR>', opts)

--move to previous/next 

km('n', '<C-l>', ':BufferNext<CR>', opts)
km('n', '<C-h>', ':BufferPrevious<CR>', opts)

-- autosaving
km('n', '<leader>n', ':ASToggle<CR>', {})

-- Packer

km('n', '<leader>pi', ':PackerInstall<cr>', {noremap = true})

km('n', '<leader>ps', ':PackerSync<cr>', {noremap = true})


km('n', '<leader>pc', ':PackerClean<cr>', {noremap = true})




