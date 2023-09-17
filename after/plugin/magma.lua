local km = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }




km(
    "n",
    "<leader>me",
    ":MagmaEvaluateOperator<CR>",
    {
        noremap = true,
        silent = true,
        expr = true
    }) 
km( 
    "n",
    "<leader>el",
    ":MagmaEvaluateLine<CR>",
    {
        noremap = true,
        silent = true
    }
)
