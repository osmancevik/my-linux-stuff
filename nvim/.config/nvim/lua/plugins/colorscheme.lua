return {
  -- VS Code Teması
  {
    "Mofiqul/vscode.nvim",
    priority = 1000, -- Temanın her şeyden önce yüklenmesi için
    opts = {
      -- 'dark' (varsayılan) veya 'light' seçebilirsin
      style = "dark",
      -- İtalyik yazı tipi tercihlerini buradan ayarlayabilirsin
      italic_comments = true,
      -- Arka plan şeffaf olsun istersen true yapabilirsin
      transparent = false,
    },
  },

  -- LazyVim'e bu temayı kullanmasını söylüyoruz
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}
