return {
  {
    "Pocco81/auto-save.nvim",
    opts = {
      enabled = true,
      trigger_events = { "InsertLeave", "TextChanged" },
      condition = function(buf)
        local fn = vim.fn
        local api = vim.api

        -- 1. Tamponun hala geçerli olup olmadığını kontrol et (Hatanın çözümü)
        if not buf or not api.nvim_buf_is_valid(buf) then
          return false
        end

        -- 2. Sadece normal dosyalarda çalış (Mevcut kontrolün)
        local buftype = fn.getbufvar(buf, "&buftype")
        if buftype ~= "" then
          return false
        end

        return true
      end,
      write_all_buffers = false,
      debounce_delay = 135,
      callbacks = {
        after_saving = function()
          if Snacks then
            Snacks.notify.info("Değişiklikler kaydedildi", { title = "AutoSave", timeout = 1000 })
          end
        end,
      },
    },
  },
}
