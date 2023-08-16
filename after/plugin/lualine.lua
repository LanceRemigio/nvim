local lualine = require('lualine')

local colors = {
  bg       = '#3b4252',
  fg       = '#d8dee9',
  yellow   = '#ebcb8b',
  cyan     = '#88c0d0',
  darkblue = '#5e81ac',
  green    = '#8fbcbb',
  orange   = '#d08770',
  violet   = '#5e81ac',
  magenta  = '#b48ea',
  blue     = '#5e81ac',
  red      = '#bf616a',
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local config = {
  options = {
    -- Disable sections and component separators
    icons_enabled = true, 
    always_divide_middle = true,
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    theme = 'auto',
    globalstatus = true,
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {"mode"},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end


-- ins_left {
--   -- mode component
--   function()
--     return ''
--   end,
--   color = function()
--     -- auto change color according to neovims mode
--     local mode_color = {
--       n = colors.blue,
--       i = colors.green,
--       v = colors.blue,
--       [''] = colors.blue,
--       V = colors.blue,
--       c = colors.magenta,
--       no = colors.red,
--       s = colors.orange,
--       S = colors.orange,
--       [''] = colors.orange,
--       ic = colors.yellow,
--       R = colors.violet,
--       Rv = colors.violet,
--       cv = colors.red,
--       ce = colors.red,
--       r = colors.cyan,
--       rm = colors.cyan,
--       ['r?'] = colors.cyan,
--       ['!'] = colors.red,
--       t = colors.red,
--     }
--     return { fg = mode_color[vim.fn.mode()] }
--   end,
--   padding = { right = 1 },
-- }

ins_left {
  -- filesize component
  'filesize',
  cond = conditions.buffer_not_empty,
}

ins_left { 'location' }

ins_left { 'progress', color = { fg = colors.fg, gui = 'bold' } }

ins_left {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan },
  },
}

ins_left {
  function()
    return '%='
  end,
}

ins_left { 
'filetype',
colored = true,
icon_only = true,
icon = { align = 'right'}
}

ins_left {
  'filename',
  cond = conditions.buffer_not_empty,
  color = { fg = colors.magenta, gui = 'bold' },
  symbols =  { 
    modified = '',
    readonly = '',
  }
}

ins_right {
  'branch',
  icon = '',
  color = { fg = colors.blue, gui = 'bold' },
}

ins_right {
  'diff',
  -- Is it me or the symbol for modified us really weird
  symbols = { added = ' ', modified = ' ', removed = ' ' },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
  cond = conditions.hide_in_width,
}

lualine.setup(config)

