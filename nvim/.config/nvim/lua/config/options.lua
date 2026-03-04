local opt = vim.opt

-- 2. Görsel ve Genel Ayarlar
opt.number = true         -- Satır numaralarını göster
opt.relativenumber = true -- Göreceli satır numaraları (Hızlı zıplamak için)
opt.cursorline = true     -- Mevcut satırı vurgula
opt.termguicolors = true  -- Gerçek renk desteği
opt.scrolloff = 10        -- İmleç ekranın altına/üstüne gelmeden 10 satır önce kaydırmaya başla
opt.signcolumn = "yes"    -- Hata/Git işaretleri için sütunu her zaman açık tut

-- 3. Girinti (Indentation) Ayarları
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- 4. Arama Ayarları
opt.ignorecase = true -- Aramada büyük/küçük harf duyarlılığını kapat
opt.smartcase = true  -- Eğer büyük harf kullanırsan duyarlı hale geç

-- Swap, backup ve undo dosyalarını JetBrains mantığında yönetmek
opt.swapfile = false    -- .swp dosyası oluşturma
opt.backup = false      -- Yedek dosya oluşturma
opt.writebackup = false -- Dosya yazılırken yedekleme yapma
opt.undofile = true     -- Dosya kapansa bile geri alma (undo) geçmişini korur (JetBrains'deki Local History gibi)
vim.opt.autowrite = true    -- Bazı komutlar çalıştırıldığında otomatik kaydet
vim.opt.autowriteall = true -- Pencere odağı kaybolduğunda vb. durumlarda kaydet

-- SSH bağlantısı algılanırsa OSC 52 pano desteğini aç
if vim.env.SSH_TTY then
  vim.g.clipboard = {
    name = 'OSC 52',
    copy = {
      ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
      ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
    },
    paste = {
      ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
      ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
    },
  }
end
