
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local km = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- empty setup using defaults

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

km('n', '<C-z>', ':NvimTreeToggle<cr>', opts)
km('n', '<C-x>', ':NvimTreeFocus<cr>', opts)
km('n', '<leader>x', ':NvimTreeFindFile<cr>', opts)
km('n', '<leader>z', ':NvimTreeCollapse<cr>', opts)
