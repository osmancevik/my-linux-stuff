-- completion.lua: configuration for saghen/blink.cmp auto completion

return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
        ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
        ["<Up>"] = { "fallback" },
        ["<Down>"] = { "fallback" },
        ["<CR>"] = { "accept", "fallback" },
      },
      -- prevent auto focus to completion menu
      completion = {
        list = {
          selection = { preselect = false, auto_insert = false },
        },
      },
    },
  },
}
