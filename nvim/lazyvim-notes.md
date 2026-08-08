## Gezinme Davranışları

### flash.nvim ve Find Mode

* Sadece ekranda görebildiğin bir noktaya gitmeni sağlar.
* Normal modda s tuşuna basarak aktif olur.
* Girdi olarak bir veya çok karakter verilebilir. Girdinin yanında bir gezinme harfi belirir.
* Seçtiğin gezinme harfi seni ilk girdi karakterinin olduğu yere ışınlar.
* f ve t tuşları find mode'u tetikler.
* Find mode'a girdikten sonra aranan eleman tuşlanır ve bu sefer gidilmesi istenilen elemanın sıra numarasına göre ulaşılır.
* f gitmek istenilen elemanın sonrasına, t ise öncesine gider.
* f ve t imlecin aşağısı için çalışır. F ve T imlecin yukarısı için çalışır.

### Ekran Kaydırma

* CTRL-u -> Yarım ekran yukarı kaydırır.
* CTRL-b -> Yarım ekran aşağı kaydırır.
* CTRL-e -> Bir satır aşağı kaydırır.
* CTRL-y -> Bir satır yukarı kaydırır.
* zz -> İmleci ortalayacak şekilde ekranı kaydırır. 
* zt -> Üstte 4 satır kalacak şekilde kaydırır.
* zb -> Altta 4 satır kalacak şekilde kaydırır.

### Buffer İçinde Gezinme

* w -> Sonraki sözcüğün başı.
* e -> Sonraki sözcüğün sonu.
* b -> Önceki sözcüğün başı.
* ge -> Önceki sözcüğün sonu.
* gh -> Mevcut satırın başına.
* gl -> Mevcut satırın sonuna.
* gg -> Dosyanın başına.
* G -> Dosyanın sonuna.
* 5G -> 5. satıra git
* CTRL-o -> Son atladığım yere geri dön.
* CTRL-i -> Geçmişte ileriye doğru atla.

### Explorer ve File Find

* Space Space -> Find arayüzünü root alanında açar.
* Space f F -> Find arayüzünü cwd alanında açar.
* Space e -> Explorer penceresini açar.
* CTRL h -> Explorer ile Buffer arasında geçiş yapar.
* flash eklentisi Buffer ve Explorer arasında kullanılablir.
* d -> Seçili dosyayı siler.
* a -> Bir dizin veya dosya ekler.
* r -> Dizin ya da dosyayı yeniden adlandırır.
* y ve p -> Dosya kopyalama ve yapıştırma için kullanılır.
* m -> Bir dosya yeni konuma veya isme taşınır.
* / -> Fuzzy Search başlatır.

### Temel Metin Düzenleme
* dh -> İmlecin solundan bir harf siler.
* dw -> İmlecin sağından bir kelime siler.
* d0 -> İmleçten satır başına kadar olan kısmı siler.
* d2fe -> İmlecin bulunduğu konum ile sonraki ikinci e arasındaki tüm metni siler.
* D -> İmlecin bulunduğu noktadan satırın sonuna kadar siler.
* dd -> Bütün satırı tek seferde siler.
* Yukarıdaki tüm d kombinasyonları c ile yapılırsa önce siler sonra ekleme moduna geçer.
* x -> İmlecin altındaki karakteri siler.
* X -> İmlecin bir solundaki karakteri siler.
* r -> İmleç altındaki karakteri değiştirir.
* J -> Satır sonu karakterini siler.
* gJ -> Boşluğu silmeden satır birleştirme yapar.
* . -> En son gerçekleştirilen eylemi tekrar eder.
* u -> Değişiklikleri geri alır.
* CTRL-r -> İleri alma yapar.

### Operator-Pending
* ( ve ) -> Cümle başına ve sonraki cümleye atlar.
* { ve } -> Paragraf başına ve sonraki paragrafa atlar.
* [ ve ] -> Bir önceki ve sonraki bir şeye atlamanızı sağlar.

### Görsel Mod ve Kopyala-Yapıştır
* p -> Panodaki metni imlecin sonrasına yerleştirir.
* P -> Panodaki metni imlecin öncesine yerleştirir.
* y -> Kopyalama menüsünü açar.
* yy -> Bütün satırı kopyalar.
* Y -> İmleçten sonrasını kopyalar.
* y0 -> İmleçten öncesini kopyalar.
* v -> Görsel moda girer.
* gv -> Son görsel mod seçimini tekrar uygular.
* o -> Görsel modda seçimin iki ucu arasında hareket etmeyi sağlar.
* V -> Hareketlerde tüm satırı alır.
* CTRL-v -> Blok görsel modunu aktif eder.

### Registers
* " -> Register ekranını açar.
* "ap -> Seçilen register'ı yapıştırır.
* "ay -> Seçilen metni a register'ına kopyalar.
* CTRL-r -> Insert modunda yazmaç ekranını açar.
* Space p -> yanky eklentisinden gelen register ekranını açar. Enter tuşu ile yapıştırılabilir.

### Ekran Yönetimi
* Shift H ve L -> Açık bufferlar arasında gezinti sağlar.
* Space , -> Arabellek listesini açar. 
* Space bd -> Arabelleği kapatır.
* Space bD -> Arabelleği ve pencereyi kapatır.
* CTRL-x -> Arabellek listesinde seçili olanı kapatır.
* Space . -> Scratch arabellek açar. 
* Space S -> Scratch arabellek seçiciyi açar.
* Space wv -> Yeni pencere oluşturur.
* Space wd -> Odaklı pencereyi siler.
* Space ws -> Yeni yatay pencere oluşturur.
* (Explorer) CTRL-v -> Dosyayı dikey pencerede açar.
* Space tab tab -> Yeni sekme oluşturur.
* gt -> Sekmeler arasında geçiş yapar.
* space tab d -> Odaklı sekmeyi kapatır.
* za -> Açık kodu katlar ve katlı olan kodu açar.
* zR -> Katlı olan tüm kodları geri açar.
