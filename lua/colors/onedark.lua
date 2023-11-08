require('onedark').setup { 
    style = 'dark',
    transparent = false,
    codestyle = {
        comments = 'italic',
        keywords = 'bold',
        functions = 'bold',
        strings = 'italic',
        variables = 'bold'
    },
    lualine = { 
        transparent = true,
    },
}

require('onedark').load()
