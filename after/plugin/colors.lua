local hl =  vim.api.nvim_set_hl
local set = vim.g

function Colors(color)
    color = color or 'gruvbox-material'
    vim.cmd.colorscheme(color)
    hl(0, 'Normal', {bg = 'none'})
    hl(0, 'NormalFloat', { bg = 'none' })
    hl(0, 'SignColumn', {bg = 'none'})
    hl(0, 'MsgArea', {bg = 'none'})
    -- hi(0, 'StatusLine', {bg = 'none'})
end

function setTelescopeColors()
    hl(0, 'TelescopeNormal', { bg = '#32302f'})
    hl(0, 'TelescopeBorder', { bg = '#282828', fg = '#282828'})
    hl(0, 'TelescopePromptBorder', { bg = '#32302f', fg = '#32302f'})
    hl(0, 'TelescopePromptTitle', {bg = '#32302f', fg = '#d4be98'})
    hl(0, 'TelescopePreviewTitle', {bg = '#282828', fg = '#d4be98'})
    hl(0, 'TelescopeResultsTitle', {bg = '#282828', fg = '#d4be98'})
end

Colors()
setTelescopeColors()



