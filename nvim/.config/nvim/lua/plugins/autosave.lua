return {
  {
    "Pocco81/auto-save.nvim",
    opts = {
      enabled = true,
      -- JetBrains gibi pencere değiştiğinde veya yazma durduğunda tetikle
      trigger_events = { "InsertLeave", "TextChanged", "FocusLost" }, 
      condition = function(buf)
        local fn = vim.fn
        local buftype = fn.getbufvar(buf, "&buftype")
        -- Sadece normal dosyalarda ve yazılabilir alanlarda çalış
        if buftype ~= "" then return false end
        return true
      end,
      write_all_buffers = false,
      debounce_delay = 200, -- Çok sık kaydedip diski yormaması için kısa bir gecikme
    },
  },
}
