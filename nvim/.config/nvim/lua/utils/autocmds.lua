-- Automatically saves modified buffers on focus loss, buffer/mode changes, or text modification.

local excluded_filetypes = {
  "gitcommit",
  "gitrebase",
  "TelescopePrompt",
  "harpoon",
}

local function safe_save()
  -- Basic checks: Is it modified? Is it a normal buffer? Does it have a name? Is it writable?
  if not (vim.bo.modified and vim.bo.buftype == "" and vim.api.nvim_buf_get_name(0) ~= "" and not vim.bo.readonly) then
    return
  end

  -- Skip specific filetypes
  if vim.tbl_contains(excluded_filetypes, vim.bo.filetype) then
    return
  end

  -- Large file protection: skip files larger than 10MB
  local max_size = 10 * 1024 * 1024 -- 10MB
  local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(0))
  if ok and stats and stats.size > max_size then
    return
  end

  -- Use 'noautocmd' to prevent triggering secondary formatters or linters during auto-save
  vim.cmd("silent! noautocmd update")
end

-- Debounce mechanism to prevent excessive disk writes
local timer = vim.loop.new_timer()
local function debounced_save()
  timer:stop()
  timer:start(1000, 0, vim.schedule_wrap(safe_save)) -- Waits for 1 second of inactivity
end

-- Create autocommands for saving
vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave", "InsertLeave", "TextChanged" }, {
  group = vim.api.nvim_create_augroup("JetBrainsSafeSave", { clear = true }),
  callback = function(args)
    -- Save immediately on FocusLost or BufLeave; use debounce for active text changes
    if args.event == "FocusLost" or args.event == "BufLeave" then
      vim.schedule(safe_save)
    else
      debounced_save()
    end
  end,
})
