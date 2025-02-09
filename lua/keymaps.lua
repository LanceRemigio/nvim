local km = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- quiting
km('n', '<leader>q', ':q<cr>', {noremap = true})

-- sourcing files 
km('n', '<leader>sf', ':source %<cr>', {noremap = true})

-- navigating through tabs

km('n', '<leader>e',  ':bd<cr>', opts)

km('n', '<c-l>', ':BufferNext<cr>', opts )
km('n', '<c-h>', ':BufferPrevious<cr>', opts )

km("v", "J", ":m '>+1<cr>gv=gv", {noremap = true})
km("v", "K", ":m '<-2<cr>gv=gv", {noremap = true})

km('n', '<s-d>', '<c-d>zz', {noremap = true})
km('n', '<s-u>', '<c-u>zz', {noremap = true})

-- km('n', '<s-d>', '}', {noremap = true})
-- km('n', '<s-u>', '{', {noremap = true})

km('n', '<leader>pi', ':PackerInstall<cr>', {noremap = true})

km('n', '<leader>ps', ':PackerSync<cr>', {noremap = true})

km('n', '<leader>pc', ':PackerClean<cr>', {noremap = true})

-- km('n', '<leader>ne', ':!node %<cr>', {noremap = true})

km('n', '<leader>mp', ':MarkdownPreview<cr>', {noremap = true})

km('n', "<c-l>", ':bnext<cr>zz', {noremap=true}) 

km('n', "<c-h>", ':bprevious<cr>zz', {noremap=true})

km('n', '<S-h>', '<S-h>zz', {noremap = true} )

km('n', '<S-l>', '<S-l>zz', {noremap = true})

km('n', '<S-m>', '<S-m>zz', {noremap = true})

km('n', 'G', 'Gzz', {noremap = true})

km('n', 'n', 'nzz', {noremap = true}) 

km('n', '<S-n>', '<S-n>zz', {noremap = true})

km('n', "bd", ":bdelete<cr>", {noremap = true})

km('n', '<leader>db', ':DBUIToggle<cr>', {noremap =true})

km('n', '<leader>dba', ':DBUIAddConnection<cr>', {noremap = true})

km('n', '<leader>vs', ':vsplit <cr>', {noremap = true})

km('n', '<leader>t', ':term <cr>', {noremap = true})

km('n', '<leader>ns' ,'<cmd> nohlsearch <cr>', {noremap = true} )

km('n', '<leader>as', ':ASToggle <cr>', {noremap = true})


