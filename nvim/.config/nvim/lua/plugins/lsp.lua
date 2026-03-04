return {
  -- 1. LSP Yapılandırması (Python, Rust, vb.)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Python Ayarları
        pyright = {
          settings = {
            python = {
              analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "workspace",
              },
            },
          },
        },
        -- Rust Ayarları (Sistemindeki rust-analyzer ile konuşması için)
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              checkOnSave = { command = "clippy" },
              procMacro = { enable = true },
            },
          },
        },
        -- SQL Ayarları
        sqls = {},
      },
    },
  },

  -- 2. SQL ve Diğer Formatlayıcılar (Conform.nvim)
  -- "No formatter available" hatasını bu blok çözecektir.
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        sql = { "sql_formatter" },
        python = { "black" }, -- İstersen ruff olarak da değiştirebilirsin
      },
    },
  },
}
