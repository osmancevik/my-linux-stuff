return {
  -- 1. Snacks.nvim (Görsel altyapı)
  {
    "folke/snacks.nvim",
    opts = {
      image = { enabled = true },
      statuscolumn = { enabled = true },
    },
    init = function()
      vim.o.statuscolumn = [[%!v:lua.require'snacks.statuscolumn'.get()]]
    end,
  },

  -- 2. Treesitter (Dil desteği)
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) ~= "table" then
        opts.ensure_installed = { "lua", "vim", "vimdoc", "query" }
      end
      vim.list_extend(opts.ensure_installed, { "latex", "markdown", "markdown_inline", "css" })
      return opts
    end,
  },
}
