local home = os.getenv('HOME')
local db = require('dashboard')


db.default_banner = {                                   
  ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
  ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
  ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
  ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
  ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
  ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝ ╚═╝',
}

db.hide_statusline  = false 

db.custom_center = {
      {icon = '  ',
      desc = 'Recently opened files   ',
      action =  'Telescope oldfiles'},
      {icon = '  ',
      desc = 'Find File               ',
      action = 'Telescope find_files' },
      {icon = '  ',
      desc = 'Change Colorscheme      ',
      action = 'Telescope colorscheme'},
    }
