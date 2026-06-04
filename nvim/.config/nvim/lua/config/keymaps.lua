-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- JetBrains Style Run (Python, C, etc.)
vim.keymap.set("n", "<F5>", function()
  require("utils.runner").run_file()
end, { desc = "JetBrains Style Run (Wait for Enter)" })
