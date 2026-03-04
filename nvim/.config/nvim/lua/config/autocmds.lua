-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

local function safe_save()
  -- Sadece dosya değiştirilmişse, bir adı varsa ve normal bir dosyaysa kaydet
  if vim.bo.modified and vim.bo.buftype == "" and vim.api.nvim_buf_get_name(0) ~= "" then
    -- silent! komutu sayesinde kayıt işlemi hata mesajı basmadan gerçekleşir
    vim.cmd("silent! update")
  end
end

-- JetBrains mantığı: Odak kaybolduğunda, mod değiştiğinde veya metin değiştiğinde kaydet
vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave", "InsertLeave", "TextChanged" }, {
  group = vim.api.nvim_create_augroup("JetBrainsSafeSave", { clear = true }),
  callback = function()
    -- Hata almamak için işlemi zamanlanmış bir görev olarak çalıştır
    vim.schedule(safe_save)
  end,
})
