-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Set scrolloff when entering insert mode
vim.api.nvim_create_autocmd({ "InsertEnter" }, {
  group = augroup("insertcenter"),
  pattern = "*",
  callback = function()
    local scrolloff_value = math.floor(vim.api.nvim_win_get_height(0) / 2)
    vim.opt.scrolloff = scrolloff_value
    -- Echo a message to confirm the autocmd was triggered
    vim.api.nvim_echo({ { " new InsertEnter: Scrolloff set to " .. scrolloff_value, "Normal" } }, false, {})
  end,
})

-- Set scrolloff when entering or resizing windows, or leaving insert mode
vim.api.nvim_create_autocmd({ "VimEnter", "WinEnter", "VimResized", "InsertLeave" }, {
  group = augroup("keep_center"),
  pattern = "*",
  callback = function()
    local scrolloff_value = math.floor(vim.api.nvim_win_get_height(0) / 2) + 1
    vim.g.scrolloff = scrolloff_value
    -- Echo a message to confirm the autocmd was triggered
    vim.api.nvim_echo({ { "Event triggered: Scrolloff set to " .. scrolloff_value, "Normal" } }, false, {})
  end,
})
