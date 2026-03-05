-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

-- Save the current buffer silently if it is a modified, named, and normal file
local function safe_save()
  if vim.bo.modified and vim.bo.buftype == "" and vim.api.nvim_buf_get_name(0) ~= "" then
    vim.cmd("silent! update")
  end
end

-- Auto-save on focus loss, buffer leave, mode change, or text modification
vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave", "InsertLeave", "TextChanged" }, {
  group = vim.api.nvim_create_augroup("JetBrainsSafeSave", { clear = true }),
  callback = function()
    vim.schedule(safe_save)
  end,
})
