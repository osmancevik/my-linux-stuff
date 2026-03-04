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
