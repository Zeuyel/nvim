vim.g.mapleader = " "

local mode_nv = { "n", "v" }
local mode_v = { "v" }
local mode_i = { "i" }
local nmappings = {
  { from = "S", to = ":w<CR>" },
  { from = "Q", to = ":q<CR>" },
  {
    from = ";",
    to = ":",
    mode = mode_nv,
  },
  {
    from = "Y",
    to = '"+y',
    mode = mode_v,
  },
  {
    from = "`",
    to = "~",
    mode = mode_nv,
  },

  -- Movement
  {
    from = "U",
    to = "5k",
    mode = mode_nv,
  },
  {
    from = "E",
    to = "5j",
    mode = mode_nv,
  },
  {
    from = "N",
    to = "0",
    mode = mode_nv,
  },
  {
    from = "n",
    to = "$",
    mode = mode_nv,
  },
  {
    from = "<C-U>",
    to = "5<C-y>",
    mode = mode_nv,
  },
  {
    from = "<C-E>",
    to = "5<C-e>",
    mode = mode_nv,
  },
  { from = "c,.", to = "c%" },

  -- Useful actions
  {
    from = ",.",
    to = "%",
    mode = mode_nv,
  },
  { from = "\\v", to = "v$h" },
  {
    from = "<c-a>",
    to = "<ESC>A",
    mode = mode_i,
  },

  -- Window & splits
  { from = "<leader>w", to = "<C-w>w" },
  { from = "<leader>k", to = "<C-w>k" },
  { from = "<leader>j", to = "<C-w>j" },
  { from = "<leader>h", to = "<C-w>h" },
  { from = "<leader>l", to = "<C-w>l" },
  { from = "qf", to = "<C-w>o" },

  { from = "su", to = ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>" },
  { from = "se", to = ":set splitbelow<CR>:split<CR>" },
  { from = "sn", to = ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>" },
  { from = "si", to = ":set splitright<CR>:vsplit<CR>" },
  { from = "<up>", to = ":res +5<CR>" },
  { from = "<down>", to = ":res -5<CR>" },
  { from = "<left>", to = ":vertical resize-5<CR>" },
  { from = "<right>", to = ":vertical resize+5<CR>" },

  -- Tab management
  { from = "tu", to = ":tabe<CR>" },
  { from = "ej", to = "gT" },
  { from = "ek", to = "gt" },
  { from = "ee", to = ":tabclose<CR>" },

  -- Other
  { from = "<leader>sw", to = ":set wrap<CR>" },
  { from = "<leader>sc", to = ":set spell!<CR>" },
  { from = "<leader><CR>", to = ":nohlsearch<CR>" },
  { from = "<f10>", to = ":TSHighlightCapturesUnderCursor<CR>" },
  { from = "<leader>o", to = "za" },
  { from = "<leader>pr", to = ":profile start profile.log<CR>:profile func *<CR>:profile file *<CR>" },
  { from = "<leader>rc", to = ":e ~/.config/nvim/init.lua<CR>" },
  { from = ",v", to = "v%" },
  { from = "<leader><esc>", to = ":quitall<CR>" },

  -- Joshuto
  { from = "R", to = ":Joshuto<CR>" },

  { from = "-", to = "N" },
  { from = "=", to = "n" },
}

for _, mapping in ipairs(nmappings) do
  vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, { noremap = true })
end

local function run_vim_shortcut(shortcut)
  local escaped_shortcut = vim.api.nvim_replace_termcodes(shortcut, true, false, true)
  vim.api.nvim_feedkeys(escaped_shortcut, "n", true)
end

-- close win below
vim.keymap.set("n", "<leader>q", function()
  require("trouble").close()
  local wins = vim.api.nvim_tabpage_list_wins(0)
  if #wins > 1 then
    run_vim_shortcut([[<C-w>j:q<CR>]])
  end
end, { noremap = true, silent = true })

vim.keymap.set({ "i" }, "<CR>", "<CR><c-o>zz", { noremap = true, silent = true })

-- for luasnip
local ls = require("luasnip")
vim.keymap.set({ "i", "s" }, "<c-h>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end, { silent = true })
