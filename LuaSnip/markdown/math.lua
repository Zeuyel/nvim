local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

return {
  s({ trig = "ii", snippetType = "autosnippet" }, fmta("$<>$", i(1))),
  s({ trig = "dd", snippetType = "autosnippet" }, fmta("$$\n<>\n$$", i(1))),
}
