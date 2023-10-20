require('onedark').setup { 
    style = 'darker',
    transparent = true,
    codestyle = {
        comments = 'italic',
        keywords = 'none',
        functions = 'bold',
        strings = 'italic',
        variables = 'bold'
    },
    lualine = { 
        transparent = true,
    },
}

require('onedark').load()
