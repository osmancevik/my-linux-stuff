return {
  -- 1. LSP Configuration
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Python settings
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
        -- Rust settings
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              checkOnSave = { command = "clippy" },
              procMacro = { enable = true },
            },
          },
        },
        -- SQL settings
        sqls = {},
      },
    },
  },

  -- 2. SQL & other formatters
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        sql = { "sql_formatter" },
        python = { "black" },
      },
    },
  },
}
