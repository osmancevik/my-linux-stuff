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

  -- 2. Treesitter (Dil desteği ve Performans ayarı)
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) ~= "table" then
        opts.ensure_installed = { "lua", "vim", "vimdoc", "query" }
      end
      vim.list_extend(opts.ensure_installed, { "latex", "markdown", "markdown_inline", "css" })

      -- Büyük dosyalarda performansı korumak için highlight kısıtlaması
      opts.highlight = {
        enable = true,
        disable = function(lang, buf)
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
      }
      return opts
    end,
  },

  -- 3. Neo-tree (Dosya gezgini senkronizasyonu)
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        -- JetBrains benzeri: Açık olan dosyayı ağaç yapısında otomatik bulur
        follow_current_file = { enabled = true },
        -- Dosya sistemindeki değişiklikleri (yeni dosya vb.) anlık izler
        use_libuv_file_watcher = true,
      },
    },
  },
}
