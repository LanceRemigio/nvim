local hl =  vim.api.nvim_set_hl
local set = vim.g
-- local bg_color = '#3c3836'
local fg_color = '#D4D4D4'
local prompt_color = '#2d2d2d'

function Colors(color)
    color = color or 'arctic'
    vim.cmd.colorscheme(color)
    hl(0, 'Normal', {bg = 'none'})
    hl(0, 'NormalFloat', { bg = 'none' })
    hl(0, 'SignColumn', {bg = 'none'})
    hl(0, 'MsgArea', {bg = 'none'})
    -- hl(0, 'StatusLine', {bg = '#2d2d2d'})
    hl(0, 'linenr', {bg = 'none'})
end

-- function setTelescopeColors()
--     hl(0, 'TelescopeNormal', {bg = prompt_color})
--     hl(0, 'TelescopeBorder', {bg = prompt_color, fg = prompt_color})
--     hl(0, 'TelescopePromptBorder', { bg = "#2d2d2d", fg = "#2d2d2d"})
--     hl(0, 'TelescopePromptTitle', { bg = bg_color, fg = fg_color})
--     hl(0, 'TelescopePreviewTitle', { bg = bg_color, fg = fg_color})
--     hl(0, 'TelescopeResultsTitle', {bg = bg_color, fg = fg_color})
-- end
--
Colors()
-- setTelescopeColors()



