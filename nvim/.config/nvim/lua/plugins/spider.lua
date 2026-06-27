return {
  "chrisgrieser/nvim-spider",
  lazy = true,
  dependencies = {
    {
      "vhyrro/luarocks.nvim",
      priority = 1000,
      lazy = false,
      opts = {
        rocks = { "dkjson", "luautf8" },
      },
    },
  },
  keys = {
    { "w", "<cmd>lua require('spider').motion('w')<CR>", mode = { "n", "o", "x" } },
    { "e", "<cmd>lua require('spider').motion('e')<CR>", mode = { "n", "o", "x" } },
    { "b", "<cmd>lua require('spider').motion('b')<CR>", mode = { "n", "o", "x" } },
    { "ge", "<cmd>lua require('spider').motion('ge')<CR>", mode = { "n", "o", "x" } },
  },
}
