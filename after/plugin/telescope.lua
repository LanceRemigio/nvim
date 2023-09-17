local actions = require('telescope.actions')
local builtin = require('telescope.builtin')
local km = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

require('telescope').setup{
    extensions = { 
        file_browser = {
                  mappings = {
        ["i"] = {
            -- ["<A-c>"] = fb_actions.create,
            -- ["<S-CR>"] = fb_actions.create_from_prompt,
            -- ["<A-r>"] = fb_actions.rename,
            -- ["<A-m>"] = fb_actions.move,
            -- ["<A-y>"] = fb_actions.copy,
            -- ["<A-d>"] = fb_actions.remove,
            -- ["<C-o>"] = fb_actions.open,
            -- ["<C-g>"] = fb_actions.goto_parent_dir,
            -- ["<C-e>"] = fb_actions.goto_home_dir,
            -- ["<C-w>"] = fb_actions.goto_cwd,
            -- ["<C-t>"] = fb_actions.change_cwd,
            -- ["<C-f>"] = fb_actions.toggle_browser,
            -- ["<C-h>"] = fb_actions.toggle_hidden,
            -- ["<C-s>"] = fb_actions.toggle_all,
            -- ["<bs>"] = fb_actions.backspace,
        },
        ["n"] = {
           -- ["c"] = fb_actions.create,
          -- ["r"] = fb_actions.rename,
          -- ["m"] = fb_actions.move,
          -- ["y"] = fb_actions.copy,
          -- ["d"] = fb_actions.remove,
          -- ["o"] = fb_actions.open,
          -- ["g"] = fb_actions.goto_parent_dir,
          -- ["e"] = fb_actions.goto_home_dir,
          -- ["w"] = fb_actions.goto_cwd,
          -- ["t"] = fb_actions.change_cwd,
          -- ["f"] = fb_actions.toggle_browser,
          -- ["h"] = fb_actions.toggle_hidden,
          -- ["s"] = fb_actions.toggle_all,        
        },
      },
        }
    }
}

require("telescope").load_extension "file_browser"


km('n', '<leader>ff', ':Telescope find_files<cr>', opts)
km('n', '<leader>lg', ':Telescope live_grep<cr>', opts)
km('n', '<leader>bb', ':Telescope buffers<cr>', opts)
km('n', '<leader>ht', ':Telescope help_tags<cr>', opts)
km('n', '<leader>fh', ':Telescope oldfiles<cr>', opts)
km('n', '<leader>cc', ':Telescope colorscheme<cr>', opts)
km('n', '<leader>gf', ':Telescope git_files<cr>', opts )
km('n', '<leader>fb', ':Telescope file_browser<cr>', opts)


