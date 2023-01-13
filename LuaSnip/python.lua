
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

-- latex manim stuff
s('mm', fmta('\\(<>\\)<>', {i(1), i(2)})),

s({trig = 'md', snippetType = "autosnippet"}, fmta('\\[<>\\]<>', {i(1), i(2)})),

s({trig =  'bpr', snippetType = 'autosnippet'}, fmta('\\Big(<>\\Big)<>', {i(1), i(0)})),

s('bld', fmta('\\textbf{<>}<>', {i(1), i(0)})),

s('it', fmta('\\textit{<>}<>', {i(1), i(0)})),

s({trig = 'sb', snippetType = 'autosnippet'}, fmta('\\subseteq<>', {i(1)})),

s({trig = 'mns', snippetType = 'autosnippet'},
fmta("\\setmminus<>", {i(1)})
),

s({trig = 'ff', snippetType = 'autosnippet'},
fmta("\\frac{<>}{<>}", {i(1), i(2)})
),

s({trig = 'sq', snippetType = 'autosnippet'},
fmta("\\sqrt{<>}<>", {i(1), i(2)})
),

s({trig = 'eps', snippetType = 'autosnippet'},
fmta("\\epsilon<>", {i(1)})
),

s({trig = 'st'},
fmta("\\{ <> \\}<>", {i(1), i(2)})
),

s({trig = 'cap', snippetType = 'autosnippet'},fmta("\\bigcap_{<>}^{<>}<>",{i(1), i(2), i(3)})),


s({trig = 'abs', snippetType = 'autosnippet'},
fmta('|<>|<>',{i(1), i(0)} )
),

s({trig = 'lm', snippetType = 'autosnippet'}, fmta('\\lim<>', {i(1)})),

s({ trig = 'dd', snippetType = 'autosnippet'}, fmta("\\frac{d<>}{d<>}<>", {i(1), i(2), i(0)})),

s('pp', fmta("\\frac{\\partial<>}{\\partial<>}<>", {i(1), i(2), i(0)})),

-- actual python snippets

s("sp", fmta("self.play(<>)<>", {i(1), i(2)})),

s("tex", fmta("Tex('<>')<>", {i(1), i(2)})),

s("mt", fmta("MathTex(r'<>')<>", {i(1), i(2)})),

s("tmt", fmta("TransformMatchingTex(<>)<>", {i(1), i(2)})),

s("tm", fmta("Transform(<>)<>", {i(1), i(2)})),

s( 
    "scn", 
    fmta(
    [[
        class <>(Scene):
            def construct(self):
            <>
    ]],
    { 
    i(1),
    i(2)
    }
    )
),



}
