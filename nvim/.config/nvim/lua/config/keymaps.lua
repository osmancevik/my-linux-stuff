-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "v" }, "gh", "^")
vim.keymap.set({ "n", "v" }, "gl", "g_")

local modes = { "n", "v" }
local arrows = { "<Up>", "<Down>", "<Left>", "<Right>" }

for _, mode in ipairs(modes) do
  for _, arrow in ipairs(arrows) do
    vim.keymap.set(mode, arrow, "<nop>", { desc = "Disabled" })
  end
end

vim.keymap.set("i", "<Up>", "<nop>", { desc = "Disabled" })
vim.keymap.set("i", "<Down>", "<nop>", { desc = "Disabled" })
vim.keymap.set("i", "<Left>", "<nop>", { desc = "Disabled" })
vim.keymap.set("i", "<Right>", "<nop>", { desc = "Disabled" })
