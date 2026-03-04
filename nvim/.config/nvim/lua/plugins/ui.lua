return {
  -- 1. Snacks.nvim Ayarları
  {
    "folke/snacks.nvim",
    opts = {
      image = { enabled = true },
      statuscolumn = { enabled = true },
    },
  },

  -- 2. Treesitter Ayarları
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) ~= "table" then
        opts.ensure_installed = { "lua", "vim", "vimdoc", "query" }
      end

      vim.list_extend(opts.ensure_installed, {
        "latex",
        "markdown",
        "markdown_inline",
        "css",
      })

      return opts
    end,
  },
}
