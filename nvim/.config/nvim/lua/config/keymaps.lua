-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

vim.keymap.set("n", "<F5>", function()
  local ft = vim.bo.filetype
  local file = vim.fn.expand("%:p")
  local cmd = ""

  -- Komutun sonuna ' && echo "" && read -p "Bitti, çıkmak için Enter..."' ekliyoruz
  local wait_cmd = ' && echo "" && printf "Program sonlandı. Kapatmak için Enter..." && read'

  if ft == "python" then
    cmd = "python3 " .. file .. wait_cmd
  elseif ft == "c" then
    local out = vim.fn.expand("%:p:r")
    cmd = "gcc " .. file .. " -o " .. out .. " && " .. out .. wait_cmd
  end

  if cmd ~= "" then
    Snacks.terminal.get(cmd, {
      win = {
        position = "bottom",
        height = 0.4,
        -- Pencereyi daha belirgin yapmak için border ekleyebilirsin
        border = "rounded",
      },
    })
  else
    print("Bu dosya tipi için çalışma komutu tanımlanmadı!")
  end
end, { desc = "JetBrains Style Run (Wait for Enter)" })
