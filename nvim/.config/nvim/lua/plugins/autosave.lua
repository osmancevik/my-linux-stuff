return {
  {
    "Pocco81/auto-save.nvim",
    opts = {
      enabled = true,
      -- Eklentinin kendi tetikleyicilerini hata vermemesi için kapatıyoruz
      trigger_events = {}, 
      condition = function(buf)
        local api = vim.api
        -- Sadece geçerli ve normal dosya tamponlarını kabul et
        if not buf or not api.nvim_buf_is_valid(buf) then return false end
        if vim.fn.getbufvar(buf, "&buftype") ~= "" then return false end
        return true
      end,
      write_all_buffers = false,
      debounce_delay = 0,
      -- Bildirimleri (popup) tamamen sessizleştiriyoruz
      callbacks = {},
    },
  },
}
