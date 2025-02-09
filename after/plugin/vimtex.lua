local set = vim.opt
local let = vim.g

if vim.fn.has('linux') then
    let.vimtex_view_method = 'zathura'
else 
    let.vimtex_view_general_viewer = 'sumatrapdf.exe'
    let.vimtex_view_general_options = '-reuse-instance @pdf'
end

let.vimtex_quickfix_mode = 2
let.vimtex_matchparen_enabled = 0
let.vimtex_quickfix_open_on_warning = 0
set.conceallevel = 1
let.vimtex_fold_enabled = 0
let.vimtex_fold_manual = 0
let.vitmex_delim_stopline = 5

let.vimtex_compiler_latexmk = { 
    ["options"] = { 
        "-file-line-error",
        "-interaction=nonstopmode",
        "-shell-escape",
        "-synctex=1",
        "-verbose",
    },
    continuous = 1
}


