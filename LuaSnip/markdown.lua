


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
    "env", 
    fmta(
    [[ 
        ````<>
        <>
        ````
    ]],
    {
        i(1),
        i(2)
    }
    )
),

s(
    "bx",
    fmta(
    [[`<>`]],
    {i(1)}
    )
),

s(
    "it",
    fmta(
    "*<>*",
    {i(1)}
    )
),


s(
    "py",
    fmta(
    [[
        ````python
        <>
        ````
    ]],
    {
        i(1)
    }
    )
),


s(
    "sql",
    fmta(
        [[
            ```sql
            <>
            ```
        ]],
        {
            i(1)
        }
    )
),


s(
    "exp",
    fmta(
        [[
            `<>`
        ]],
        {
            i(1)
        }
    )
),


s(
    {
        trig = "h1",
        snippetType = 'autosnippet'
},
    fmta(
        "#",
        {}
    )
),

s(
    {
        trig = 'h2',
        snippetType = 'autosnippet'
    },
    fmta(
        "##",
        {}
    )

),


s(
    {
        trig = 'h3',
        snippetType = 'autosnippet'
    },
    fmta(
        "###",
        {}
    )

),


s(
    {
        trig = 'bld',
        snippetType = 'autosnippet'
    },
    fmta(
        "**<>**",
        {i(1)}
    )

),


s(
    'pi',
    fmta(
        [[
            ![<>](<>)
        ]],
        {
            i(1), i(2)
        }
    )


),

s(
    {
        trig = 'ff'
    },
    fmta(
        [[\frac{<>}{<>}]],
        {i(1), i(2)}
    )
),

s(
    {
        trig = 'sm'
    }, 
    fmta(
        [[ \sum_{<>}^{<>} <> ]],
        {i(1), i(2), i(3)}
    )
),

s(
    {
        trig = 'abs'
    },
    fmta(
        [[|<>|]],
        {i(1)}
    )
),

s(
    {
        trig = 'll'
    },
    fmta(
        [[<>_{<>}]],
        {i(1), i(2)}
    )
),

s(
    {
        trig = 'hat'
    },
    fmta(
        [[\hat{<>}]],
        {i(1)}
    )
),

s(
    {
        trig = 'mm'
    },
    fmta(
        [[$<>$]],
        {i(1)}
    )
),

s(
    {
        trig = 'md'
    },
    fmta(
        [[$$<>$$]],
        {i(1)}
    )
),


s(
    {
        trig = 'ss'
    },
    fmta(
        [[<>^{<>}]],
        {i(1),i(2)}
    )
),






}









