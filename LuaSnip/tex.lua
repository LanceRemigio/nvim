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

local in_mathzone = function()
    return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
s({trig = 'mm', snippetType = "autosnippet"}, fmta('\\(<>\\) <>', {i(1), i(2)})),

s({trig = 'md', snippetType = "autosnippet"}, fmta('\\[<>\\] <>', {i(1), i(2)})),

s({trig =  'bpr', snippetType = 'autosnippet'}, fmta('\\Big(<>\\Big) <>', {i(1), i(2)})),

s('bld', fmta('\\textbf{ <> } <>', {i(1), i(0)})),

s('it', fmta('\\textit{ <> } <>', {i(1), i(0)})),

s({trig = "lim", snippetType = "autosnippet"}, fmta("\\lim_{ <> \\to <> } <>", {i(1), i(2), i(3)}), {condition = in_mathzone}),


s({trig = 'sb', snippetType = 'autosnippet'}, fmta('\\subseteq <>', {i(1)}), {condition = in_mathzone}),

s({trig = 'mns', snippetType = 'autosnippet'},
fmta("\\setmminus <>", {i(1)}),
{condition = in_mathzone}
),

s({trig = 'ff', snippetType = 'autosnippet'},
fmta("\\frac{ <> }{ <> } <>", {i(1), i(2), i(3)}),
{condition = in_mathzone}
),

s({trig = 'sq', snippetType = 'autosnippet'},
fmta("\\sqrt{ <> } <>", {i(1), i(2)}),
{condition = in_mathzone}
),

s({trig = 'eps', snippetType = 'autosnippet'},
fmta("\\epsilon <>", {i(1)}),
{condition = in_mathzone}
),

s({trig = 'st', snippetType = 'autosnippet'},
fmta("\\{ <> \\} <>", {i(1), i(2)}),
{condition = in_mathzone}
),

s({trig = 'cap', snippetType = 'autosnippet'},
fmta("\\bigcap_{ <> }^{ <> } <>",
{i(1), i(2), i(3)}),
{condition = in_mathzone}),

s({trig = 'cup', snippetType = 'autosnippet'}, fmta("\\bigcup_{ <> }^{ <> } <>", {i(1), i(2), i(3)}), {condition = in_mathzone}),

s({trig = 'abs', snippetType = 'autosnippet'},
fmta('| <> | <>',{i(1), i(0)} ),
{condition = in_mathzone}
),

s({trig = 'bga', snippetType = 'autosnippet'}, fmta('\\Big| <> \\Big| <>', {i(1), i(2)}), {condition = in_mathzone}  ),

s({trig = 'lm', snippetType = 'autosnippet'}, fmta('\\lim <>', {i(1)})),

s({trig = 'sum', snippetType = 'autosnippet'}, fmta('\\sum <>', {i(1)}), {condition = in_mathzone}),

s({trig = 'sp', snippetType = 'autosnippet'}, fmta('\\sup <>', {i(1)}), {condition = in_mathzone}),

s({ trig = 'dd', snippetType = 'autosnippet'}, fmta("\\frac{d <> }{d <> } <>", {i(1), i(2), i(3)})),

s({trig = 'pp', snippetType = 'autosnippet'}, fmta("\\frac{\\partial <> }{\\partial <> } <>", {i(1), i(2), i(3)})),

s({trig = 'int', snippetType = 'autosnippet'}, fmta("\\int_{ <> }^{ <> } <> d<>", {i(1), i(2),i(3),i(4)}), {condition = in_mathzone}),

s({trig = 'ify', snippetType = 'autosnippet'}, fmta( "\\infty <>", {i(1)}), {condition = in_mathzone}),

s({trig = 'gt', snippetType = 'autosnippet'}, fmta("\\geq <>", {i(1)}), {condition = in_mathzone}),

s({trig = 'sm', snippetType = 'autosnippet'}, fmta('\\sum_{ <> }^{ <> } <>', {i(1), i(2), i(3)}), {condition = in_mathzone}),

s({trig = 'vc', snippetType = 'autosnippet'}, fmta('\\vec{ <> } <>', {i(1),i(2)}), {condition = in_mathzone}),


s({trig = 'lt', snippetType = 'autosnippet'}, fmta("\\leq <>", {i(1)}), {condition = in_mathzone}),
--environments

s({trig="env", snippetType="autosnippet"},
  fmta(
    [[
      \begin{<>}
          <>
      \end{<>}
    ]],
    {
      i(1),
      i(2),
      rep(1),  -- this node repeats insert node i(1)
    }
  )
),
s({trig = "prf", snippetType="autosnippet"},
  fmta(
    [[
      \begin{proof}
      <>
      \end{proof}<>
    ]],
    {
      i(1),
      i(0)
    }
  )
),

s({trig = 'thm', snippetType = 'autosnippet'},
  fmta(
    [[
      \begin{tcolorbox}
      \begin{thm}
      <>
      \end{thm}<>
      \end{tcolorbox}
    ]],
    {
      i(1),
      i(0)
    }
  )
),

s({trig = 'df', snippetType = 'autosnippet'},
  fmta(
    [[
      \begin{tcolorbox}
      \begin{defn}
      <>
      \end{defn}<>
      \end{tcolorbox}
    ]],
    {
      i(1),
      i(0)
    }
  )
),


s("cor",
  fmta(
    [[
      \begin{tcolorbox}
      \begin{cor}
      <>
      \end{cor}<>
      \end{tcolorbox}
    ]],
    {
      i(1),
      i(0)
    }
  )
),


s("ex",
  fmta(
    [[
      \begin{ex}
      <>
      \end{ex}<>
    ]],
    {
      i(1),
      i(0)
    }
  )
),


s("sol",
  fmta(
    [[
      \begin{proof}[Solution]
      <>
      \end{proof}<>
    ]],
    {
      i(1),
      i(0)
    }
  )
),

s("en",
  fmta(
    [[
    \begin{enumerate}
        \item[(<>)]<>
    \end{enumerate}
    ]],
    {
      i(1),
      i(2)
    }
  )
),
s("itm",
  fmta(
    [[
    \begin{itemize}
        \item<>
    \end{itemize}
    ]],
    {
      i(1)
    }
  )
),
s("alg",
  fmta(
    [[
    \begin{align*}
        <>&<> \\<>
    \end{align*}
    ]],
    {
      i(1),
      i(2),
      i(0)
    }
  )
),
s("cs",
  fmta(
    [[
    <>
    \begin{cases}
        <>
    \end{cases}<>
    ]],
    {
      i(1),
      i(2),
      i(3)
    }
  )
),
s("lem",
  fmta(
    [[
      \begin{tcolorbox}
      \begin{lem}
      <>
      \end{lem}<>
      \end{tcolorbox}
    ]],
    {
      i(1),
      i(2)
    }
  )
),


}
