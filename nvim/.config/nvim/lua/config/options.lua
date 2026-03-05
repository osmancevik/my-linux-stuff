local opt = vim.opt

-- Visual and general settings
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.termguicolors = true
opt.scrolloff = 10
opt.signcolumn = "yes"

-- Indentation settings
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- Search settings
opt.ignorecase = true
opt.smartcase = true

-- Manage swap, backup, and undo files in JetBrains style
opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.undofile = true
vim.opt.autowrite = true
vim.opt.autowriteall = true

-- Enable OSC 52 clipboard support if an SSH connection is detected
if vim.env.SSH_TTY then
  vim.g.clipboard = {
    name = "OSC 52",
    copy = {
      ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
      ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
    },
    paste = {
      ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
      ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
    },
  }
end
