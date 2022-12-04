

local km = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


-- Saving files
km('n', '<C-s>', ':w<CR>', opts)

-- quiting
km('n', '<leader>q', ':q<cr>', {noremap = true})

-- sourcing files 
km('n', '<leader>sf', ':source %<cr>', {noremap = true})

-- coc.nvim completion

km('i', '<cr>', [[coc#pum#visible() ? coc#pum#confirm() : "\<CR>"]], {noremap = true, silent =true  , expr = true })

-- enable discord presence
km('n', '<leader>rc', ':CocCommand rpc.enable<cr>', {noremap = true})


-- Telescope 
km('n', '<leader>ff', ':Telescope find_files<cr>', opts)
km('n', '<leader>fg', ':Telescope live_grep<cr>', opts)
km('n', '<leader>tb', ':Telescope buffers<cr>', opts)
km('n', '<leader>fh', ':Telescope help_tags<cr>', opts)

--nvim-tree


km('n', '<C-z>', ':NvimTreeToggle<cr>', opts)
km('n', '<C-x>', ':NvimTreeFocus<cr>', opts)
km('n', '<leader>x', ':NvimTreeFindFile<cr>', opts)
km('n', '<leader>z', ':NvimTreeCollapse<cr>', opts)

-- fzf 

km('n', '<C-f>', ':History<CR>', {noremap = true})


-- navigating through tabs

km('n', '<leader>e',  ':BufferClose<CR>', opts)

--move to previous/next 

km('n', '<C-h>', ':BufferNext<CR>', opts)
km('n', '<C-h>', ':BufferPrevious<CR>', opts)


-- Python 

km('n', '<leader>a', ':botright 10sp <CR> :term python3 % <CR>', {noremap = true})

-- latex 
--
km('n', '<leader>c', ':VimtexCompile<CR>', {noremap = true})

-- snippets 
km('n', '<leader>us', ':UltiSnipsEdit<cr>', {noremap = true})


-- autosaving
km('n', '<leader>n', ':ASToggle<CR>', {})

-- Packer

km('n', '<leader>pi', ':PackerInstall<cr>', {noremap = true})

km('n', '<leader>ps', ':PackerSync<cr>', {noremap = true})


km('n', '<leader>pc', ':PackerClean<cr>', {noremap = true})
