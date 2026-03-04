return {
  {
    "Pocco81/auto-save.nvim",
    opts = {
      enabled = true,
      trigger_events = { "InsertLeave", "TextChanged" },
      condition = function(buf)
        local api = vim.api
        local fn = vim.fn

        -- Tampon geçerlilik kontrolü (Hata almamak için)
        if not buf or not api.nvim_buf_is_valid(buf) then
          return false
        end

        -- Sadece normal dosyalarda çalış
        local buftype = fn.getbufvar(buf, "&buftype")
        if buftype ~= "" then
          return false
        end

        return true
      end,
      write_all_buffers = false,
      debounce_delay = 135,
      -- Bildirimleri kaldırmak için callbacks içini boş bırakıyoruz
      callbacks = {},
    },
  },
}
