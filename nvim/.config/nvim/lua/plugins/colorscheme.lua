-- colorscheme.lua: theme configurations

return {
  -- VS Code Theme
  {
    "Mofiqul/vscode.nvim",
    priority = 1000,
    opts = {
      style = "dark",
      italic_comments = true,
      transparent = false,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}
