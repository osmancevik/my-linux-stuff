-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Dosya her kaydedildiğinde kısa bir bildirim göster
vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("gui_save_notification", { clear = true }),
  callback = function()
    vim.notify("Dosya kaydedildi", vim.log.levels.INFO, { title = "AutoSave", timeout = 500 })
  end,
})
