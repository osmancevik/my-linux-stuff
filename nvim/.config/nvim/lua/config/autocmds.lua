-- autocmds.lua

-- Save buffer if it is modified, named, and a normal file
local function safe_save()
  if vim.bo.modified and vim.bo.buftype == "" and vim.api.nvim_buf_get_name(0) ~= "" and not vim.bo.readonly then
    vim.cmd("silent! update")
  end
end

-- Auto-save on focus loss, buffer/mode changes, or text modification
vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave", "InsertLeave", "TextChanged" }, {
  group = vim.api.nvim_create_augroup("JetBrainsSafeSave", { clear = true }),
  callback = function()
    vim.schedule(safe_save)
  end,
})
