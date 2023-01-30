


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
s({trig = 'mm', snippetType = "autosnippet"}, fmta('$<>$', {i(1)})),


s({trig = 'md', snippetType = "autosnippet"}, fmta('$$ <> $$', {i(1)})),

s({trig =  'bpr', snippetType = 'autosnippet'}, fmta('\\Big( <> \\Big)', {i(1)})),

s('bld', fmta('\\textbf{<>}', {i(1)})),

s('it', fmta('\\textit{<>} ', {i(1)})),

s({trig = "lim", snippetType = "autosnippet"}, fmta("\\lim_{ <> \\to <> } ", {i(1), i(2)})),


s({trig = 'sb', snippetType = 'autosnippet'}, fmta('\\subseteq <>', {i(1)})),

s({trig = 'mns', snippetType = 'autosnippet'},
fmta("\\setmminus <>", {i(1)})

),

s({trig = 'ff', snippetType = 'autosnippet'},
fmta("\\frac{ <> }{ <> } ", {i(1), i(2)})

),

s({trig = 'sq', snippetType = 'autosnippet'},
fmta("\\sqrt{ <> } ", {i(1)})),

s({trig = 'nu', snippetType = 'autosnippet'}, fmta("<>^<>", {i(1), i(2)})),

s({trig = 'nl', snippetType = 'autosnippet'}, fmta("<>_<>", {i(1), i(2)})),

s({trig = 'sd', snippetType = 'autosnippet'}, fmta("<> + <> + \\dots + <>", {i(1), i(2), i(3)})),

s({trig = 'eps', snippetType = 'autosnippet'},
fmta("\\epsilon <>", {i(1)})

),

s({trig = 'st', snippetType = 'autosnippet'},
fmta("\\{ <> \\} ", {i(1)})

),

s({trig = "bcp", snippetType = "autosnippet"},
fmta("\\bigcap_{ <> }^{ <> } ",
{i(1), i(2)})
),

s({trig = 'bup', snippetType = "autosnippet" }, fmta("\\bigcup_{ <> }^{ <> } ", {i(1), i(2)})),


s({trig = 'abs', snippetType = 'autosnippet'},
fmta('| <> | ',{i(1)})

),

s({trig = 'bb', snippetType = 'autosnippet'}, fmta('\\Big[ <> \\Big]', {i(1)})),


s({trig = 'bga', snippetType = 'autosnippet'}, fmta('\\Big| <> \\Big| ', {i(1)})  ),

s({trig = 'lm', snippetType = 'autosnippet'}, fmta('\\lim <>', {i(1)})),

s({trig = 'sum', snippetType = 'autosnippet'}, fmta('\\sum <>', {i(1)})),

s({trig = 'sp', snippetType = 'autosnippet'}, fmta('\\sup <>', {i(1)})),

s({ trig = 'dd', snippetType = 'autosnippet'}, fmta("\\frac{d <> }{d <> } ", {i(1), i(2)})),

s({trig = 'pp', snippetType = 'autosnippet'}, fmta("\\frac{\\partial <> }{\\partial <> } ", {i(1), i(2)})),

s({trig = 'int', snippetType = 'autosnippet'}, fmta("\\int_{ <> }^{ <> } <> d<>", {i(1), i(2),i(3),i(4)})),

s({trig = 'ify', snippetType = 'autosnippet'}, fmta( "\\infty <>", {i(1)})),

s({trig = 'gt', snippetType = 'autosnippet'}, fmta("\\geq <>", {i(1)})),

s({trig = 'sm', snippetType = 'autosnippet'}, fmta('\\sum_{ <> }^{ <> }', {i(1), i(2)})),

s({trig = 'vc', snippetType = 'autosnippet'}, fmta('\\vec{ <> } ', {i(1)})),


s({trig = 'lt', snippetType = 'autosnippet'}, fmta("\\leq <>", {i(1)})),

s(
    "env", 
    fmta(
    [[ 
        ````
        <>
        ````
    ]],
    {
        i(1)
    }
))



}



