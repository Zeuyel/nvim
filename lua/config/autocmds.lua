-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- Make cursor always centered on the screen by defaults

-- Make cursor always centered on the screen by default
if not vim.g.noalwayscenter then
  -- Calculate proper scrolloff
  local function set_scrolloff()
    vim.opt.scrolloff = math.floor(vim.api.nvim_win_get_height(0) / 2) + 1
  end

  local function set_scrolloff_insert()
    vim.opt.scrolloff = math.floor(vim.api.nvim_win_get_height(0) / 2)
  end

  -- Autocommand for entering and resizing windows, leaving insert mode
  vim.api.nvim_create_autocmd({ "VimEnter", "WinEnter", "VimResized", "InsertLeave" }, {
    callback = set_scrolloff,
  })

  vim.api.nvim_create_autocmd("InsertEnter", {
    callback = set_scrolloff_insert,
  })

  -- Use <Enter> to keep the cursor centered in insert mode
  vim.keymap.set("i", "<CR>", "<CR><C-o>zz", { noremap = true })
end
