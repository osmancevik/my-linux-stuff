return {
  {
    "Pocco81/auto-save.nvim",
    -- Auto-save configuration
    opts = {
      enabled = true,
      -- Disable default triggers to prevent conflicts
      trigger_events = {},
      condition = function(buf)
        local api = vim.api
        -- Accept only valid and normal file buffers
        if not buf or not api.nvim_buf_is_valid(buf) then
          return false
        end
        if vim.fn.getbufvar(buf, "&buftype") ~= "" then
          return false
        end
        return true
      end,
      write_all_buffers = false,
      debounce_delay = 0,
      -- Silence all notifications and popups
      callbacks = {},
    },
  },
}
