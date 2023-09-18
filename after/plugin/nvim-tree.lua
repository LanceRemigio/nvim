vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local km = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

km('n', '<C-z>', ':NvimTreeToggle<cr>', opts)
km('n', '<C-x>', ':NvimTreeFocus<cr>', opts)
km('n', '<leader>x', ':NvimTreeFindFile<cr>', opts)
km('n', '<leader>z', ':NvimTreeCollapse<cr>', opts)
