{\rtf1\ansi\ansicpg1252\cocoartf2869
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 # \uc0\u55356 \u57318  T\'fcrk Bankac\u305 l\u305 k Sekt\'f6r\'fc \'97 Takipteki Kredi (NPL) Analizi\
\
## Proje Hakk\uc0\u305 nda\
Bu proje, BDDK (Bankac\uc0\u305 l\u305 k D\'fczenleme ve Denetleme Kurumu) taraf\u305 ndan \
yay\uc0\u305 mlanan 2025 y\u305 l\u305 na ait ayl\u305 k sekt\'f6rel kredi verilerini kullanarak \
T\'fcrk bankac\uc0\u305 l\u305 k sekt\'f6r\'fcndeki takipteki kredi (NPL) riskini SQL ile \
analiz etmektedir.\
\
## Veri Kayna\uc0\u287 \u305 \
- **Kaynak:** BDDK \'97 Sekt\'f6rel Kredi Da\uc0\u287 \u305 l\u305 m\u305  (2025/1 - 2025/12)\
- **Format:** Ayl\uc0\u305 k Excel dosyalar\u305  \u8594  CSV \u8594  SQLite veritaban\u305 \
- **Kapsam:** 69 sekt\'f6r, 12 ay, 828 g\'f6zlem\
\
## Kullan\uc0\u305 lan Ara\'e7lar\
- SQL (SQLite)\
- DB Browser for SQLite\
- Python \'97 12 Excel dosyas\uc0\u305 n\u305  CSV format\u305 na d\'f6n\'fc\u351 t\'fcrmek ve\
  SQLite veritaban\uc0\u305 na aktarmak i\'e7in\
\
## Analizler\
\
### Analiz 1 \'97 En Riskli 10 Sekt\'f6r\
12 ayl\uc0\u305 k a\u287 \u305 rl\u305 kl\u305  ortalama NPL oran\u305 na g\'f6re en riskli sekt\'f6rler\
hesaplanm\uc0\u305 \u351 t\u305 r.\
\
### Analiz 2 \'97 Sekt\'f6rel Risk Kategorileri\
Sekt\'f6rler 2025 y\uc0\u305 l\u305  genel NPL ortalamas\u305  (%1.88) baz al\u305 narak \
4 risk kategorisine ayr\uc0\u305 lm\u305 \u351 t\u305 r.\
\
**E\uc0\u351 ikler:**\
- Kritik Risk: Genel ortalaman\uc0\u305 n 3 kat\u305  \'fczeri (> %5.64)\
- Y\'fcksek Risk: Genel ortalaman\uc0\u305 n 2 kat\u305  \'fczeri (> %3.76)\
- Orta Risk: Genel ortalama \'fczeri (> %1.88)\
- D\'fc\uc0\u351 \'fck Risk: Genel ortalama alt\u305  (< %1.88)\
\
### Analiz 3 \'97 NPL Trend Analizi\
LAG() window function kullan\uc0\u305 larak her sekt\'f6r\'fcn ayl\u305 k NPL de\u287 i\u351 imi \
hesaplanm\uc0\u305 \u351 , 2025 y\u305 l\u305  boyunca hangi sekt\'f6rlerin risk profilinin \
k\'f6t\'fcle\uc0\u351 ti\u287 i tespit edilmi\u351 tir.\
\
### Analiz 4 \'97 Risk Kategorisine G\'f6re Kredi Hacmi\
Her risk kategorisindeki toplam kredi hacmi ve sekt\'f6r say\uc0\u305 s\u305  \
hesaplanm\uc0\u305 \u351 t\u305 r.\
\
### Analiz 5 \'97 T\'fcm Sekt\'f6rlerin Kredi Hacmi ve Risk Profili\
69 sekt\'f6r\'fcn tamam\uc0\u305  kredi hacmine g\'f6re s\u305 ralanm\u305 \u351 , her sekt\'f6r\'fcn \
NPL oran\uc0\u305  ve risk kategorisi listelenmi\u351 tir.\
\
## \'d6ne \'c7\uc0\u305 kan Bulgular\
\
**Genel Tablo:**\
- 2025 y\uc0\u305 l\u305  genel NPL ortalamas\u305  %1.88 olup uluslararas\u305  \
  kritik e\uc0\u351 ik olan %5'in belirgin \u351 ekilde alt\u305 ndad\u305 r\
- Yaln\uc0\u305 zca 1 sekt\'f6r Kritik Risk e\u351 i\u287 ini a\u351 m\u305 \u351 t\u305 r\
\
**Kritik Risk:**\
- \uc0\u304 \u351 \'e7i \'c7al\u305 \u351 t\u305 ran \'d6zel Ki\u351 iler (%12.27 NPL, 19.83 milyar TL) \'97\
  k\'fc\'e7\'fck hacimli ancak anormal derecede y\'fcksek NPL oran\uc0\u305 ,\
  yak\uc0\u305 ndan incelenmesi gerekmektedir\
\
**Y\'fcksek Risk \'97 B\'fcy\'fck Hacimli:**\
- Ferdi Kredi Di\uc0\u287 er (%4.76, 22,627 milyar TL) \'97 hem hacim \
  b\'fcy\'fck hem risk y\'fcksek, en kritik kombinasyon\
- \uc0\u304 n\u351 aat (%3.83, 15,145 milyar TL) \'97 y\'fcksek hacimli \
  geleneksel risk sekt\'f6r\'fc\
\
**Olumlu Tablo:**\
- \uc0\u304 malat Sanayi en b\'fcy\'fck kredi hacmine sahip sekt\'f6r \
  (56,453 milyar TL) olmas\uc0\u305 na ra\u287 men D\'fc\u351 \'fck Risk (%1.48)\
- Konut Kredileri 7,201 milyar TL hacmiyle en sa\uc0\u287 l\u305 kl\u305  \
  sekt\'f6r (%0.16 NPL)\
- Kredi Kartlar\uc0\u305  (37,781 milyar TL, %3.48) y\'fcksek hacmi \
  nedeniyle yak\uc0\u305 ndan izlenmesi gereken sekt\'f6rd\'fcr\
\
## Klas\'f6r Yap\uc0\u305 s\u305 }