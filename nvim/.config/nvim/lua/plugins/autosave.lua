return {
  "okuuva/auto-save.nvim",
  cmd = "ASToggle",
  event = { "InsertLeave", "TextChanged" },
  opts = {
    enabled = true,

    trigger_events = {
      immediate_save = { "BufLeave", "FocusLost" },
      defer_save = { "InsertLeave", "TextChanged" },
    },

    condition = function(buf)
      local fn = vim.fn

      if fn.getbufvar(buf, "&modifiable") ~= 1 then
        return false
      end

      local current_ft = fn.getbufvar(buf, "&filetype")

      local excluded_filetypes = { "gitcommit", "harpoon", "NvimTree", "neo-tree", "TelescopePrompt" }

      for _, ft in ipairs(excluded_filetypes) do
        if current_ft == ft then
          return false
        end
      end

      return true
    end,

    write_all_buffers = false,
    debounce_delay = 1000,
    clear_command_line_history = true,
  },
  keys = {
    { "<leader>as", "<cmd>ASToggle<cr>", desc = "Otomatik Kaydetmeyi Aç/Kapat" },
  },
}
