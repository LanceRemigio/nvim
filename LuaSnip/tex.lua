local ls = require('luasnip')
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require('luasnip.extras.fmt').fmt
local fmta = require('luasnip.extras.fmt').fmta
local i = ls.insert_node
local rep = require('luasnip.extras').rep

return {
s('mm', fmta('\\(<>\\)<>', {i(1), i(0)})),
s('md', fmta('\\[<>\\]<>', {i(1), i(0)})),
s('bpr', fmta('\\Big(<>\\Big)<>', {i(1), i(0)})),
s('bld', fmta('\\textbf{<>}<>', {i(1), i(0)})),
s('it', fmta('\\textit{<>}<>', {i(1), i(0)})),
s('mns', fmta("\\setmminus<>", {i(1)})),
s('ff', fmta("\\frac{<>}{<>}", {i(1), i(2)})),
s('sq', fmta("\\sqrt{<>}<>", {i(1), i(0)})),
s('e', fmta("\\epsilon<>", {i(0)})),
s('st', fmta("\\{ <> \\}<>", {i(1), i(0)})),
s('cap', fmta("\\bigcap_{<>}^{<>}<>", {i(1), i(2), i(0)})),
s('cup', fmta("\\bigcup_{<>}^{<>}<>", {i(1), i(2), i(0)})),
s('abs', fmta('|<>|<>',{i(1), i(0)} )),
s('babs', fmta('\\Big|<>\\Big|<>', {i(1), i(0)})  ),
s('lm', fmta('\\lim<>', {i(1)})),
s('sm', fmta('\\sum_{<>}^{<>}<>', {i(1), i(2), i(0)})),
s('sp', fmta('\\sup<>', {i(1)})),
s('dd', fmta("\\frac{d<>}{d<>}<>", {i(1), i(2), i(0)})),
s('pp', fmta("\\frac{\\partial<>}{\\partial<>}<>", {i(1), i(2), i(0)})),
s('int', fmta("\\int_{<>}^{<>}<> d<>", {i(1), i(2),i(3),i(0)})),
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

s("thm",
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

s("def",
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
}
