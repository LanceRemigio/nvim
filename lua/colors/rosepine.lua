require('rose-pine').setup({
	-- variant = 'main',
	-- bold_vert_split = false,
	-- dim_nc_background = false,
	-- disable_background = true,
	-- disable_float_background = false,
	-- disable_italics = false,
    styles = { 
        transparency = true
    },
})

-- Set colorscheme after options
vim.cmd('colorscheme rose-pine')
