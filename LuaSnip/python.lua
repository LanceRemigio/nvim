
local ls = require('luasnip')
local s = ls.snippet
local sn = ls.snippet_node
-- local t = ls.text_node
-- local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
-- local fmt = require('luasnip.extras.fmt').fmt
local fmta = require('luasnip.extras.fmt').fmta
local i = ls.insert_node
local rep = require('luasnip.extras').rep


return { 

s(
    "if",
    fmta(
        [[
            if (<>):
                <>
        ]],
        {
            i(1),
            i(2)
        }
    )
),

s(
    "else",
    fmta(
        [[
            else:
                <>
        ]],
        {
            i(1)
        }
    )
),

s(
    "def",
    fmta(
        [[
            def <>(<>):
            <>

        ]],
        {
            i(1),
            i(2),
            i(3)
        }
    )
),

s(
    "for",
    fmta(
        [[
          for <> in <>:  
              <>
        ]],
        {
            i(1),
            i(2),
            i(3)
        }
    )
),





}
