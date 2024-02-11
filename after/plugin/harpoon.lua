local km = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

require("harpoon").setup({ ... })

km('n', "<A-a>", ":lua require('harpoon.mark').add_file()<cr>", {noremap = true})

km('n', "<A-h>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", {noremap= true})

km('n', "<A-1>", ":lua require('harpoon.ui').nav_file(1)<cr>zz", {noremap = true })
km('n', "<A-2>", ":lua require('harpoon.ui').nav_file(2)<cr>zz", {noremap = true } )
km('n', "<A-3>", ":lua require('harpoon.ui').nav_file(3)<cr>zz", {noremap = true } )
km('n', "<A-4>", ":lua require('harpoon.ui').nav_file(4)<cr>zz", {noremap = true })
