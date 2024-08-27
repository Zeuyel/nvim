local ls = require("luasnip")
local tex = require("util.latex")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local c = ls.choice_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

local line_begin = require("util.latex").in_lineBegin
local in_latex = require("util.latex").in_latex

return {
  --- greek-letter
  s({ trig = "alp", snippetType = "autosnippet", wordTrig = false }, {
    t("\\alpha"),
  }, { condition = in_latex }),
  s({ trig = "Alp", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Alpha"),
  }, { condition = in_latex }),
  s({ trig = ";a", snippetType = "autosnippet", wordTrig = false }, {
    t("\\alpha"),
  }, { condition = in_latex }),
  s({ trig = "beta", snippetType = "autosnippet", wordTrig = false }, {
    t("\\beta"),
  }, { condition = in_latex }),
  s({ trig = ";b", snippetType = "autosnippet", wordTrig = false }, {
    t("\\beta"),
  }, { condition = in_latex }),
  s({ trig = "Beta", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Beta"),
  }, { condition = in_latex }),
  s({ trig = "gam", snippetType = "autosnippet", wordTrig = false }, {
    t("\\gamma"),
  }, { condition = in_latex }),
  s({ trig = ";c", snippetType = "autosnippet", wordTrig = false }, {
    t("\\gamma"),
  }, { condition = in_latex }),
  s({ trig = "Gam", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Gamma"),
  }, { condition = in_latex }),
  s({ trig = "del", snippetType = "autosnippet", wordTrig = false }, {
    t("\\delta"),
  }, { condition = in_latex }),
  s({ trig = ";d", snippetType = "autosnippet", wordTrig = false }, {
    t("\\delta"),
  }, { condition = in_latex }),
  s({ trig = "Del", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Delta"),
  }, { condition = in_latex }),
  s({ trig = "eps", snippetType = "autosnippet", wordTrig = false }, {
    t("\\epsilon"),
  }, { condition = in_latex }),
  s({ trig = "vps", snippetType = "autosnippet", wordTrig = false }, {
    t("\\varepsilon"),
  }, { condition = in_latex }),
  s({ trig = "Eps", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Epsilon"),
  }, { condition = in_latex }),
  s({ trig = "zeta", snippetType = "autosnippet", wordTrig = false }, {
    t("\\zeta"),
  }, { condition = in_latex }),
  s({ trig = "Zeta", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Zeta"),
  }, { condition = in_latex }),
  s({ trig = "eta", snippetType = "autosnippet", wordTrig = false }, {
    t("\\eta"),
  }, { condition = in_latex }),
  s({ trig = "Eta", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Eta"),
  }, { condition = in_latex }),
  s({ trig = "the", snippetType = "autosnippet", wordTrig = false }, {
    t("\\theta"),
  }, { condition = in_latex }),
  s({ trig = "The", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Theta"),
  }, { condition = in_latex }),
  s({ trig = "iot", snippetType = "autosnippet", wordTrig = false }, {
    t("\\iota"),
  }, { condition = in_latex }),
  s({ trig = "Iot", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Iota"),
  }, { condition = in_latex }),
  s({ trig = "kap", snippetType = "autosnippet", wordTrig = false }, {
    t("\\kappa"),
  }, { condition = in_latex }),
  s({ trig = "Kap", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Kappa"),
  }, { condition = in_latex }),
  s({ trig = "lam", snippetType = "autosnippet", wordTrig = false }, {
    t("\\lambda"),
  }, { condition = in_latex }),
  s({ trig = "Lam", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Lambda"),
  }, { condition = in_latex }),
  s({ trig = "mu", snippetType = "autosnippet", wordTrig = false }, {
    t("\\mu"),
  }, { condition = in_latex }),
  s({ trig = "Mu", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Mu"),
  }, { condition = in_latex }),
  s({ trig = "nu", snippetType = "autosnippet", wordTrig = false }, {
    t("\\nu"),
  }, { condition = in_latex }),
  s({ trig = "Nu", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Nu"),
  }, { condition = in_latex }),
  -- s({ trig = "xi", snippetType = "autosnippet", wordTrig = false }, {
  --   t("\\xi"),
  -- }, { condition = in_latex }),
  -- s({ trig = "Xi", snippetType = "autosnippet", wordTrig = false }, {
  --   t("\\Xi"),
  -- }, { condition = in_latex }),
  s({ trig = "omi", snippetType = "autosnippet", wordTrig = false }, {
    t("\\omicron"),
  }, { condition = in_latex }),
  s({ trig = "pi", snippetType = "autosnippet", wordTrig = false }, {
    t("\\pi"),
  }, { condition = in_latex }),
  s({ trig = "\\pii", snippetType = "autosnippet", wordTrig = false, priority = 2000 }, {
    t("p_i"),
  }, { condition = in_latex }),
  s({ trig = "Pi", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Pi"),
  }, { condition = in_latex }),
  s({ trig = "rho", snippetType = "autosnippet", wordTrig = false }, {
    t("\\rho"),
  }, { condition = in_latex }),
  s({ trig = "Rho", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Rho"),
  }, { condition = in_latex }),
  s({ trig = "sig", snippetType = "autosnippet", wordTrig = false }, {
    t("\\sigma"),
  }, { condition = in_latex }),
  s({ trig = "Sig", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Sigma"),
  }, { condition = in_latex }),
  s({ trig = "tau", snippetType = "autosnippet", wordTrig = false }, {
    t("\\tau"),
  }, { condition = in_latex }),
  s({ trig = "Tau", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Tau"),
  }, { condition = in_latex }),
  s({ trig = "ups", snippetType = "autosnippet", wordTrig = false }, {
    t("\\ups"),
  }, { condition = in_latex }),
  s({ trig = "Ups", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Ups"),
  }, { condition = in_latex }),
  s({ trig = "phi", snippetType = "autosnippet", wordTrig = false }, {
    t("\\phi"),
  }, { condition = in_latex }),
  s({ trig = "Phi", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Phi"),
  }, { condition = in_latex }),
  s({ trig = "vhi", snippetType = "autosnippet", wordTrig = false }, {
    t("\\varphi"),
  }, { condition = in_latex }),
  s({ trig = "Vhi", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Varphi"),
  }, { condition = in_latex }),
  s({ trig = "chi", snippetType = "autosnippet", wordTrig = false }, {
    t("\\chi"),
  }, { condition = in_latex }),
  s({ trig = "Chi", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Chi"),
  }, { condition = in_latex }),
  s({ trig = "psi", snippetType = "autosnippet", wordTrig = false }, {
    t("\\psi"),
  }, { condition = in_latex }),
  s({ trig = "Psi", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Psi"),
  }, { condition = in_latex }),
  s({ trig = "ome", snippetType = "autosnippet", wordTrig = false }, {
    t("\\omega"),
  }, { condition = in_latex }),
  s({ trig = "Ome", snippetType = "autosnippet", wordTrig = false }, {
    t("\\Omega"),
  }, { condition = in_latex }),
  -- latex env for markdown
  s(
    { trig = "([% ])lm", dscr = "Top-level section", snippetType = "autosnippet", regTrig = true, wordTrig = false },
    fmta([[$<>$]], { i(1) })
  ),
  s(
    { trig = "lm", dscr = "Top-level section", snippetType = "autosnippet", regTrig = true, wordTrig = false },
    fmta([[$<>$]], { i(1) }),
    { condition = line_begin }
  ),
  s(
    { trig = "dm", dscr = "Top-level section", snippetType = "autosnippet" },
    fmta(
      [[$$
  <>
$$]],
      { i(1) }
    ),
    { condition = line_begin }
  ),
  -- basic_autocomplecation in mathzone
  s(
    { trig = "([%a%)%]%}])(%d)", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>_{<>}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      f(function(_, snip)
        return snip.captures[2]
      end),
    }),
    { condition = in_latex }
  ),
  s(
    { trig = "([%a%)%]%}])(%a)%2", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>_{<><>}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      f(function(_, snip)
        return snip.captures[2]
      end),
      i(1),
    }),
    { condition = in_latex }
  ),
  s(
    { trig = "ff", snippetType = "autosnippet" },
    fmta("\\dfrac{<>}{<>}", {
      i(1),
      i(2),
    }),
    { condition = in_latex }
  ),
  s(
    { trig = "(%d+)/", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 100 },
    fmta("\\dfrac{<>}{<>}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    }),
    { condition = in_latex }
  ),
  s(
    { trig = "(%a)/", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 100 },
    fmta("\\dfrac{<>}{<>}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    }),
    { condition = in_latex }
  ),
  s(
    { trig = "(\\%a+)/", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 2000 },
    fmta("\\dfrac{<>}{<>}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    }),
    { condition = in_latex }
  ),
  s(
    { trig = "(%a)rm", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 2000 },
    fmta("\\mathrm{<><>}", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
    }),
    { condition = in_latex }
  ),
  s(
    { trig = "lim", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("\\lim_{<>}", {
      i(1),
    }),
    { condition = in_latex }
  ),
  s(
    { trig = "lsup", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 2000 },
    fmta("\\limsup_{<>}", {
      i(1),
    }),
    { condition = in_latex }
  ),
  s(
    { trig = "linf", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("\\liminf_{<>}", {
      i(1),
    }),
    { condition = in_latex }
  ),
  s(
    { trig = "sum", snippetType = "autosnippet" },
    c(1, {
      sn(nil, { t("\\sum_{"), i(1), t("} ") }),
      sn(nil, { t("\\sum_{"), i(1), t("}^{"), i(2), t("} ") }),
    }),
    { condition = in_latex }
  ),
  s(
    { trig = "prod", snippetType = "autosnippet" },
    c(1, {
      sn(nil, { t("\\prod_{"), i(1), t("} ") }),
      sn(nil, { t("\\prod_{"), i(1), t("}^{"), i(2), t("} ") }),
    }),
    { condition = in_latex }
  ),

  s({ trig = "oo", snippetType = "autosnippet" }, t("\\infty"), { condition = in_latex }),
  s({ trig = "in", snippetType = "autosnippet" }, t("\\in"), { condition = in_latex }),
  s(
    { trig = "abrace", snippetType = "autosnippet" },
    c(1, {
      fmt("\\underbrace{<>}{<>}", { i(1), i(2) }, { delimiters = "<>" }),
      fmt("\\left(<>\\right)", { i(1) }, { delimiters = "<>" }),
    }),
    { condition = in_latex }
  ),
  s(
    { trig = "eee", snippetType = "autosnippet" },
    c(1, {
      fmt("\\prec<>", { i(1, "<") }, { delimiters = "<>" }),
      fmt("\\succ<>", { i(1, ">") }, { delimiters = "<>" }),
      fmt("\\preceq<>", { i(1, ">=") }, { delimiters = "<>" }),
      fmt("\\succeq<>", { i(1, "<=") }, { delimiters = "<>" }),
    }),
    { condition = in_latex }
  ),
  --- basic_env
  s(
    { trig = "\\beg", snippetType = "autosnippet" },
    fmta(
      [[
      \begin{<>}[<>]
        <>
      \end{<>}
      ]],
      {
        i(1),
        i(2),
        i(0),
        rep(1),
      }
    ),
    { condition = line_begin }
  ),
  s(
    { trig = "equ", snippetType = "autosnippet" },
    c(1, {
      fmta(
        [[
      \begin{equation}
        <>
      \end{equation}
      ]],
        { i(1, "單行公式") },
        { delimiters = "<>" }
      ),
      fmta(
        [[
      \begin{align<>}
        <>
      \end{align<>}
      ]],
        { i(1), i(2, "對齊"), rep(1) },
        { delimiters = "<>" }
      ),
      fmta(
        [[
      \begin{cases}
        <>,<> & \\
        <>,<> & 
      \end{cases}
      ]],
        { i(1, "分段"), i(2), i(3), i(4) },
        { delimiters = "<>" }
      ),
      fmta(
        [[
      \begin{gather}
        <>
      \end{gather}
      ]],
        { i(1, "多行只能居中") },
        { delimiters = "<>" }
      ),
    }),
    { condition = in_latex }
  ),
  s(
    { trig = "iequ", snippetType = "autosnippet" },
    c(1, {
      fmta(
        [[
      \left<>\begin{aligned}
        <>
      \end{aligned}\right<>
      ]],
        { i(1), i(2, "多行但單個"), i(3) },
        { delimiters = "<>" }
      ),
      fmta(
        [[
      \begin{array}
        <>
      \end{array}
      ]],
        { i(1) },
        { delimiters = "<>" }
      ),
    }),
    { condition = in_latex }
  ),
}
