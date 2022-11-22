return require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust", "python", "latex", "javascript"},
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
	additional_vim_regex_highlighting = true, 
}
}
