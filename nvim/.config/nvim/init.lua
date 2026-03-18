-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.filetype.add({
  pattern = {
    ["docker-compose%.yml"] = "yaml.docker-compose",
    ["docker-compose%.yaml"] = "yaml.docker-compose",
    ["compose%.yml"] = "yaml.docker-compose",
    ["compose%.yaml"] = "yaml.docker-compose",
  },
})
