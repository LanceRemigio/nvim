local ls = require('luasnip')
local s = ls.snippet
local sn = ls.snippet_node
-- local t = ls.text_node
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
s(
    { 
    trig = 'mm',
    snippetType = "autosnippet"
    },
    fmta(
    '\\( <> \\)', 
    {
        i(1)
    }
    )
),

s({trig = 'md', snippetType = "autosnippet"}, fmta('\\[ <> \\]', {i(1)})),

s({trig =  'bpr', snippetType = 'autosnippet'}, fmta('\\Big( <> \\Big)', {i(1)})),

s('bld', fmta('\\textbf{<>}', {i(1)})),

s('it', fmta('\\textit{<>} ', {i(1)})),

s({trig = "lim", snippetType = "autosnippet"}, fmta("\\lim_{ <> \\to <> } ", {i(1), i(2)}), {condition = in_mathzone}),






s(
    {
        trig = 'sb',
        snippetType = 'autosnippet'
    },
    fmta(
    '\\subseteq <>', 
    {
        i(1)}
    ),
    {
        condition = in_mathzone
    }
),

s(
    {
        trig = 'mns', 
        snippetType = 'autosnippet'
    },
    fmta(
    "\\setmminus <>", 
    {i(1)}
    ),
    {
        condition = in_mathzone
    }
),

s
    (
    {
        trig = 'ff',
        snippetType = 'autosnippet'
    },
    fmta(
        "\\frac{ <> }{ <> } ", 
        {
            i(1),
            i(2)
        }
        ),
    {
        condition = in_mathzone
    }
),

s(
    {
    trig = 'sq',
    snippetType = 'autosnippet'
    },
    fmta("\\sqrt{ <> } ", {i(1)}),
    {condition = in_mathzone}
),

s({trig = 'nu', snippetType = 'autosnippet'}, fmta("<>^<>", {i(1), i(2)}), {condition = in_mathzone}),

s({trig = 'nl', snippetType = 'autosnippet'}, fmta("<>_<>", {i(1), i(2)}), {condition = in_mathzone}),

s({trig = 'sd', snippetType = 'autosnippet'}, fmta("<> + <> + \\dots + <>", {i(1), i(2), i(3)}), {condition = in_mathzone}),

s({trig = 'eps', snippetType = 'autosnippet'},
fmta("\\epsilon <>", {i(1)}),
{condition = in_mathzone}
),

s({trig = 'st', snippetType = 'autosnippet'},
fmta("\\{ <> \\} ", {i(1)}),
{condition = in_mathzone}
),

s({trig = "bst", snippetType = "autosnippet"}, fmta("\\Big\\{<>\\Big\\}", {i(1)}), {condition = in_mathzone}),

s({trig = "bap", snippetType = "autosnippet"},
fmta("\\bigcap_{ <> }^{ <> } ",
{i(1), i(2)}),
{condition = in_mathzone}),

s({trig = 'bup', snippetType = "autosnippet" }, fmta("\\bigcup_{ <> }^{ <> } ", {i(1), i(2)}), {condition = in_mathzone}),

s({trig = 'sn', snippetType = "autosnippet"}, fmta("\\sqrt[<>]{<>}", {i(1), i(2)}), {condition = in_mathzone}),


s({trig = 'abs', snippetType = 'autosnippet'},
fmta('| <> | ',{i(1)}),
{condition = in_mathzone}
),

s({trig = 'bb', snippetType = 'autosnippet'}, fmta('\\Big[ <> \\Big]', {i(1)}), {condition = in_mathzone}),


s({trig = 'bga', snippetType = 'autosnippet'}, fmta('\\Big| <> \\Big| ', {i(1)}), {condition = in_mathzone}  ),

s({trig = 'lm', snippetType = 'autosnippet'}, fmta('\\lim <>', {i(1)})),

s({trig = 'sum', snippetType = 'autosnippet'}, fmta('\\sum <>', {i(1)}), {condition = in_mathzone}),

s(
    {
        trig = 'sp', 
    }, 
    fmta('\\sup <>', {i(1)}), 
    {
        condition = in_mathzone
    }),

s({ trig = 'dd', snippetType = 'autosnippet'}, fmta("\\frac{d <> }{d <> } ", {i(1), i(2)})),

s(
    {
    trig = 'pp', snippetType = 'autosnippet'
    }, 
    fmta(
    "\\frac{\\partial <> }{\\partial <> } ",
    {
        i(1), 
        i(2)
    }
    ),
    { 
        condition = in_mathzone
    }
),

s({trig = 'int', snippetType = 'autosnippet'}, fmta("\\int_{ <> }^{ <> } <> \\ d<>", {i(1), i(2),i(3),i(4)}), {condition = in_mathzone}),

s({trig = 'ify', snippetType = 'autosnippet'}, fmta( "\\infty <>", {i(1)}), {condition = in_mathzone}),

s({trig = 'gt', snippetType = 'autosnippet'}, fmta("\\geq <>", {i(1)}), {condition = in_mathzone}),

s({trig = 'sm', snippetType = 'autosnippet'}, fmta('\\sum_{ <> }^{ <> }', {i(1), i(2)}), {condition = in_mathzone}),

s({trig = 'vc', snippetType = 'autosnippet'}, fmta('\\vec{ <> } ', {i(1)}), {condition = in_mathzone}),


s({trig = 'lt', snippetType = 'autosnippet'}, fmta("\\leq <>", {i(1)}), {condition = in_mathzone}),

s({trig = 'cl', snippetType = 'autosnippet'}, fmta("\\overline{<>}", {i(1)}), {condition = in_mathzone}),

s({trig = 'epy', snippetType = 'autosnippet'}, fmta("\\emptyset", {}), {condition = in_mathzone}),

s({trig = 'cp', snippetType = 'autosnippet'}, fmta("(<> \\circ <>)(<>)", {i(1), i(2), i(3)}), {condition  = in_mathzone}),


s({trig = 'nn', snippetType = 'autosnippet'}, fmta("\\lVert <> \\rVert", {i(1)}), {condition = in_mathzone}),

s(
    { 
        trig = "dlt", 
        snippetType = "autosnippet"
    }, 
    fmta( 
        "\\delta", 
        {}
    ), 
    { 
        condition = in_mathzone
    }
),

s(
    { 
        trig = "bra", 
        snippetType = "autosnippet"
    },
    fmta( 
        "\\Big[<>\\Big]",
        { 
            i(1)
        }
    ), 
    { 
        condition = in_mathzone
    }

),





--environments


s({trig = "lba", snippetType = 'autosnippet'}, fmta("\\lambda",{}), {condition = in_mathzone}),


s({trig = "Lba", snippetType = 'autosnippet'}, fmta("\\Lambda",{}), {condition = in_mathzone}),

s(
    {
        trig = "defn"
    },
    fmta(
        [[
            \begin{definition}[<>]
                <>
            \end{definition}
        ]], 
        {
            i(1),i(2)
        }
    ) 
),



s(
    "thm",
    fmta(
        [[
            \begin{theorem}[<>]
                <>
            \end{theorem}
        ]], 
        {
            i(1),i(2)
        }
    ) 
),


s(
    "lem",
    fmta(
        [[
            \begin{lemma}[<>]
                <>
            \end{lemma}
        ]], 
        {
            i(1),i(2)
        }
    ) 
),


s(
    "cor",
    fmta(
        [[
            \begin{cor}{<>}{}
                <>
            \end{cor}
        ]], 
        {
            i(1),i(2)
        }
    ) 
),



s("env",
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
    })),
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

s({trig = "h1", snippetType = "autosnippet"}, fmta("\\section{<>}", {i(1)})),

s({trig = "h2", snippetType = "autosnippet"}, fmta("\\subsection{<>}", {i(1)})),

s({trig = "h3", snippetType = "autosnippet"}, fmta("\\subsubsection{<>}", {i(1)})),

s({trig = "txt", snippetType = "autosnippet"}, fmta("\\text{<>}", {i(1)}), {condition = in_mathzone}),

s({trig = "ss", snippetType = "autosnippet"}, fmta("<>^{<>}", {i(1), i(2)}), {condition = in_mathzone}),


s({trig = "ll", snippetType = "autosnippet"}, fmta("<>_{<>}", {i(1), i(2)}), {condition = in_mathzone}),

s(
    {
        trig = "ve",
        snippetType = "autosnippet"
    }, 
    fmta(
       "\\varepsilon", 
       {}
    ), 
    { 
        condition = in_mathzone
    }
),

s( 
    { 
        trig = "al",
    },
    fmta(
        "\\alpha",
        {}
    ),
    { 
        condition = in_mathzone
    }
),



s( 
    { 
        trig = "lg", 
        snippetType = "autosnippet"
    },
    fmta( 
        "\\log<>",
        {
            i(1)
        }
    ),
    {
    condition = in_mathzone
    }
),


s( 
    { 
        trig = "gmm", 
        snippetType = "autosnippet"
    }, 
    fmta( 
        "\\Gamma",
        { 

        }
    ), 

    { 
        condition = in_mathzone
    }
),


s( 
    { 
        trig = "pd",
        snippetType = "autosnippet"
    },
    fmta( 
        "\\prod_{<>}^{<>}",
        { 
            i(1),
            i(2)
        }
    ),
    { 
        condition = in_mathzone
    }

),

s(
    { 
        trig = "ex"
    }, 
    fmta(
        [[
        \begin{example}{<>}{}
        <>
        \end{example}
        ]],
        { 
            i(1),
            i(2)
        }
    ),
    { 
        condition = in_mathzone
    }


),

s( 
    { 
        trig = "ho",
        description = "half open interval"
    }, 
    fmta( 
        "(<>,<>]",
        { 
            i(1), 
            i(2)
        }
    ), 
    { 
        condition = in_mathzone
    }

),

s(
    "exer",
    fmta(
        "\\subsubsection{Exercise <>.<>.<>}",
        {
            i(1), i(2), i(3)
        }
    )
),


s(
    {
        trig = "tup",
        snippetType = "autosnippet"
    },
    fmta(
        [[(<>_{<>}, <>_{<>}, \dots, <>_{<>}) ]],
        { i(1), i(2), i(3), i(4) , i(5), i(6)}
    ),
    {
        condition = in_mathzone
    }
),


s(
    {
        trig = 'tr',
        snippetType = "autosnippet"
    },
    fmta(
        [[\text{tr}(<>)]],
        {i(1)}
    ),
    {
        condition = in_mathzone
    }
),

s(
    {
        trig = 'spn'
    },
    fmta(
        [[ \text{span}(<>)]],
        {i(1)}
    ),
    {
        condition = in_mathzone
    }
),




}







