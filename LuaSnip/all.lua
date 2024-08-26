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
return {
  --- alphabet
  s({
    trig = ";a",
    snippetType = "autosnippet",
  }, {
    t("\\alpha"),
  }),
  s({
    trig = ";b",
    snippetType = "autosnippet",
  }, {
    t("\\beta"),
  }),
  s({
    trig = ";g",
    snippetType = "autosnippet",
  }, {
    t("\\gamma"),
  }),
  s({
    trig = "tt",
    dscr = "Expands 'tt' into '\texttt{}'",
  }, {
    t("\\texttt{"),
    i(1),
    t("}"),
  }),
  s({
    trig = "ff",
    dscr = "Expands 'ff' into '\frac{}{}'",
  }, {
    i(3),
    t("\\frac{"),
    i(1), -- insert node 1
    t("}{"),
    i(2), -- insert node 2
    t("}"),
  }),
  s("choicenode", c(1, { t("choice 1"), t("choice 2"), t("choice 3") })),

  s(
    { trig = "([%a%)%]%}])(%d)", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>_<>", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      f(function(_, snip)
        return snip.captures[2]
      end),
    }),
    { conditions = tex.in_latex }
  ),
}
