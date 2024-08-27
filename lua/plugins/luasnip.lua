return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      { "rafamadriz/friendly-snippets" },
      {
        "hrsh7th/nvim-cmp",
        opts = {
          snippet = {
            expand = function(args)
              require("luasnip").lsp_expand(args.body)
            end,
          },
        },
      },
    },
    config = function()
      require("luasnip").config.set_config({
        enable_autosnippets = true,
        store_selection_keys = "]",
      })
      require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/LuaSnip" })
      local auto_expand = require("luasnip").expand_auto
      -- undo
      require("luasnip").expand_auto = function(...)
        vim.o.undolevels = vim.o.undolevels
        auto_expand(...)
      end
      -- local types = require("luasnip.util.types")
      -- require("luasnip").config.setup({
      --   ext_opts = {
      --     [types.choiceNode] = {
      --       active = {
      --         virt_text = { { "●", "GruvboxOrange" } },
      --       },
      --     },
      --     [types.insertNode] = {
      --       active = {
      --         virt_text = { { "●", "GruvboxBlue" } },
      --       },
      --     },
      --   },
      -- })
    end,
  },
}
