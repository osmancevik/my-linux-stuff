return {
  -- VS Code Theme
  {
    "Mofiqul/vscode.nvim",
    priority = 1000, -- Ensure the theme loads before other plugins
    opts = {
      -- You can choose 'dark' (default) or 'light'
      style = "dark",
      -- Configure italic font preferences for comments
      italic_comments = true,
      -- Set to true if you want a transparent background
      transparent = false,
    },
  },

  -- Configure LazyVim to use this colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}
