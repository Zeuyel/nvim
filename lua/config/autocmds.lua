-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- Make cursor always centered on the screen by defaults
if not vim.g.noalwayscenter then
  -- Function to calculate scrolloff
  local function set_scrolloff()
    local win_height = vim.api.nvim_win_get_height(0)
    local line_count = vim.api.nvim_buf_line_count(0)
    local cursor_line = vim.fn.line(".")

    -- Check if there are enough lines above and below to center the cursor
    if cursor_line > win_height / 2 and (line_count - cursor_line) > win_height / 2 then
      vim.opt.scrolloff = math.floor(win_height / 2) + 1
    else
      vim.opt.scrolloff = 0 -- Reset scrolloff if there aren't enough lines
    end
  end

  local function set_scrolloff_insert()
    local win_height = vim.api.nvim_win_get_height(0)
    local line_count = vim.api.nvim_buf_line_count(0)
    local cursor_line = vim.fn.line(".")

    -- Check if there are enough lines above and below to center the cursor
    if cursor_line > win_height / 2 and (line_count - cursor_line) > win_height / 2 then
      vim.opt.scrolloff = math.floor(win_height / 2)
    else
      vim.opt.scrolloff = 0 -- Reset scrolloff if there aren't enough lines
    end
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
