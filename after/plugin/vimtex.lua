local set = vim.opt
local let = vim.g
-- let.vimtex_view_general_viewer = 'sumatrapdf.exe'
-- let.vimtex_view_general_options = '-reuse-instance @pdf'

let.vimtex_view_method = "zathura"
let.vimtex_quickfix_mode = 0
set.conceallevel = 1
let.vimtex_fold_enabled = 1
let.vimtex_fold_manual = 1


let.vimtex_compiler_latexmk = { 
    ["options"] = { 
        "-file-line-error",
        "-interaction=nonstopmode",
        "-shell-escape",
        "-synctex=1",
        "-verbose",
    }
}


