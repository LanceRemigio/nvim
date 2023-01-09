local set = vim.keymap.set
local localset = vim.opt_local
vim.opt_local.spell = true
localset.relativenumber = false
localset.cursorline = false
set('n', '<leader>c', ':VimtexCompile<cr>', {buffer = true })
require('cmp').setup.buffer {
    formatting = {
      format = function(entry, vim_item)
          vim_item.menu = ({
            omni = (vim.inspect(vim_item.menu):gsub('%"', "")),
            buffer = "[Buffer]",
            -- formatting for other sources
            })[entry.source.name]
          return vim_item
        end,
    },
    sources = {
      { name = 'buffer' },
      -- other sources
    },
  }
