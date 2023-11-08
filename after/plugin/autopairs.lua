
require('nvim-autopairs').setup({
    fast_wrap = {
      map = '<M-e>',
      chars = { '{', '[', '(', '"', "'", "<" },
      pattern = [=[[%'%"%)%>%]%)%}%,%>%]]=],
      end_key = '$',
      keys = 'qwertyuiopzxcvbnmasdfghjkl',
      check_comma = true,
      highlight = 'Search',
      highlight_grey='Comment'
    },
})



