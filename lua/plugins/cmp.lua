return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  lazy = false,
  priority = 100,
  dependencies = {
    "onsails/lspkind.nvim",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-buffer",
  },
  opts = function(_, opts)
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    opts.experimental.ghost_text = false

    opts.mapping = {
      ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
      ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
      ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
      ["<C-y>"] = cmp.config.disable,
      ["<C-l>"] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ["<CR>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          if luasnip.expandable() then
            luasnip.expand()
          else
            cmp.confirm({
              select = true,
            })
          end
        else
          fallback()
        end
      end),
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif luasnip.locally_jumpable(1) then
          luasnip.jump(1)
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif luasnip.locally_jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end, { "i", "s" }),
    }

    opts.formatting = {
      fields = { "kind", "abbr", "menu" },
      format = function(entry, vim_item)
        local kind = require("lspkind").cmp_format({
          mode = "symbol_text",
          maxwidth = 50,
        })(entry, vim_item)
        local strings = vim.split(kind.kind, "%s", { trimempty = true })
        kind.kind = " " .. (strings[1] or "") .. " "
        kind.menu = "    " .. (strings[2] or "")

        return kind
      end,
    }

    opts.sources = {
      {
        name = "nvim_lsp_signature_help",
        priority = 100,
        group_index = 1,
      },
      {
        name = "nvim_lsp",
        priority = 100,
        group_index = 1,
      },
      {
        name = "nvim_lua",
        priority = 100,
        group_index = 1,
      },
      {
        name = "luasnip",
        priority = 100,
        group_index = 1,
      },
      {
        name = "path",
        priority = 90,
        group_index = 2,
      },
      {
        name = "spell",
        keyword_length = 3,
        max_item_count = 3,
        autocomplete = false,
        priority = 70,
        group_index = 3,
      },
      {
        name = "buffer",
        keyword_length = 3,
        autocomplete = false,
        max_item_count = 3,
        priority = 50,
        group_index = 3,
      },
    }

    return opts
  end,
}
