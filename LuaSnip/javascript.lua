
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
    {trig = "cl"}, 
    fmta("console.log(<>)", {i(1)})
),

s(
    {trig = "ar"},
    fmta("const <> = [<>]; ", {i(1), i(2)})
),

s(
    {
        trig = "for" 
    },
    fmta( 
        [[ 
            for (<> ; <> ; <>) { 
                <>
            }

        ]],
        {
            i(1), 
            i(2),
            i(3),
            i(4)
        }
    )
),

s(
    {trig = "fn"}, 
    fmta(
        [[
            function <> (<>) { 
                <>
            }
        ]],
        {
            i(1),
            i(2),
            i(3)
        }
    )


),


}



