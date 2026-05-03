**Türk Bankacılık Sektörü — Takipteki Kredi (NPL) Analizi**

## Proje Hakkında
Bu proje, BDDK (Bankacılık Düzenleme ve Denetleme Kurumu) tarafından 
yayımlanan 2025 yılına ait aylık sektörel kredi verilerini kullanarak 
Türk bankacılık sektöründeki takipteki kredi (NPL) riskini SQL ile 
analiz etmektedir.

## Veri Kaynağı
- **Kaynak:** BDDK — Sektörel Kredi Dağılımı (2025/1 - 2025/12)
- **Format:** Aylık Excel dosyaları → CSV → SQLite veritabanı
- **Kapsam:** 69 sektör, 12 ay, 828 gözlem

## Kullanılan Araçlar
- SQL (SQLite)
- DB Browser for SQLite
- Python — 12 Excel dosyasını CSV formatına dönüştürmek ve
  SQLite veritabanına aktarmak için

## Analizler

### Analiz 1 — En Riskli 10 Sektör
12 aylık ağırlıklı ortalama NPL oranına göre en riskli sektörler
hesaplanmıştır.

### Analiz 2 — Sektörel Risk Kategorileri
Sektörler 2025 yılı genel NPL ortalaması (%1.88) baz alınarak 
4 risk kategorisine ayrılmıştır.

**Eşikler:**
- Kritik Risk: Genel ortalamanın 3 katı üzeri (> %5.64)
- Yüksek Risk: Genel ortalamanın 2 katı üzeri (> %3.76)
- Orta Risk: Genel ortalama üzeri (> %1.88)
- Düşük Risk: Genel ortalama altı (< %1.88)

### Analiz 3 — NPL Trend Analizi
LAG() window function kullanılarak her sektörün aylık NPL değişimi 
hesaplanmış, 2025 yılı boyunca hangi sektörlerin risk profilinin 
kötüleştiği tespit edilmiştir.

### Analiz 4 — Risk Kategorisine Göre Kredi Hacmi
Her risk kategorisindeki toplam kredi hacmi ve sektör sayısı 
hesaplanmıştır.

### Analiz 5 — Tüm Sektörlerin Kredi Hacmi ve Risk Profili
69 sektörün tamamı kredi hacmine göre sıralanmış, her sektörün 
NPL oranı ve risk kategorisi listelenmiştir.

## Öne Çıkan Bulgular

**Genel Tablo:**
- 2025 yılı genel NPL ortalaması %1.88 olup uluslararası 
  kritik eşik olan %5'in belirgin şekilde altındadır
- Yalnızca 1 sektör Kritik Risk eşiğini aşmıştır

**Kritik Risk:**
- İşçi Çalıştıran Özel Kişiler (%12.27 NPL, 19.83 milyar TL) —
  küçük hacimli ancak anormal derecede yüksek NPL oranı,
  yakından incelenmesi gerekmektedir

**Yüksek Risk — Büyük Hacimli:**
- Ferdi Kredi Diğer (%4.76, 22,627 milyar TL) — hem hacim 
  büyük hem risk yüksek, en kritik kombinasyon
- İnşaat (%3.83, 15,145 milyar TL) — yüksek hacimli 
  geleneksel risk sektörü

**Olumlu Tablo:**
- İmalat Sanayi en büyük kredi hacmine sahip sektör 
  (56,453 milyar TL) olmasına rağmen Düşük Risk (%1.48)
- Konut Kredileri 7,201 milyar TL hacmiyle en sağlıklı 
  sektör (%0.16 NPL)
- Kredi Kartları (37,781 milyar TL, %3.48) yüksek hacmi 
  nedeniyle yakından izlenmesi gereken sektördür

**İletişim:**
www.linkedin.com/in/mustafa-güçlü-616461136

