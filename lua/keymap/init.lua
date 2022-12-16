local km = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local hop = require('hop')
local directions = require('hop.hint').HintDirection
local ls = require('luasnip')

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
km('n', '<leader>lg', ':Telescope live_grep<cr>', opts)
km('n', '<leader>bb', ':Telescope buffers<cr>', opts)
km('n', '<leader>ht', ':Telescope help_tags<cr>', opts)
km('n', '<leader>fh', ':Telescope oldfiles<cr>', opts)

--nvim-tree

km('n', '<C-z>', ':NvimTreeToggle<cr>', opts)
km('n', '<C-x>', ':NvimTreeFocus<cr>', opts)
km('n', '<leader>x', ':NvimTreeFindFile<cr>', opts)
km('n', '<leader>z', ':NvimTreeCollapse<cr>', opts)

-- navigating through tabs

km('n', '<leader>e',  ':BufferClose<CR>', opts)

--move to previous/next 

km('n', '<C-l>', ':BufferNext<CR>', opts)
km('n', '<C-h>', ':BufferPrevious<CR>', opts)


-- snippets 
km('n', '<leader>us', ':UltiSnipsEdit<cr>', {noremap = true})


-- autosaving
km('n', '<leader>n', ':ASToggle<CR>', {})

-- Packer

km('n', '<leader>pi', ':PackerInstall<cr>', {noremap = true})

km('n', '<leader>ps', ':PackerSync<cr>', {noremap = true})


km('n', '<leader>pc', ':PackerClean<cr>', {noremap = true})


km('n', '<leader>r', ':botright10sp <CR> :term python3 % <CR>', {noremap = true})


km('n', '<leader>n', ':term node % <CR>', {noremap = true })


vim.keymap.set('n', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, {remap=true})

vim.keymap.set('n', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, {remap=true})

vim.keymap.set('n', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, {remap=true})

vim.keymap.set('n', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, {remap=true})

vim.keymap.set( 'i', '<c-k>', function()
        if ls.expand_or_jumpable() then
            ls.expand_or_jump()
        end
    end, { noremap = true, silent = true })
-- Jumping backwards 
vim.keymap.set( 'i', '<c-j>', function()
        if ls.jumpable(-1) then
            ls.jump(-1)
        end
    end, { noremap = true, silent = true })
-- listing choice of snippets to choose from
vim.keymap.set('i', '<c-l>', function()
        if ls.choice_active() then
            ls.change_choice(1)
        end
    end)

vim.keymap.set('n', '<leader><leader>s', ':source ~/.config/nvim/LuaSnip/jj<CR>', {noremap = true })
