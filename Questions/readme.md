# İndeksler (Indexes) ve Performans Etkileri

## Giriş

Veritabanı indeksleri, büyük veri kümeleri üzerinde sorgu performansını artırmak için kullanılan yapılardır. İndeksler, tablo verilerinin bir alt kümesini veya sıralı halini tutarak, veriye daha hızlı erişilmesini sağlar. Bu dosyada, indekslerin türleri, kullanım senaryoları, avantajları, dezavantajları ve performans üzerindeki etkileri incelenmektedir.

---

## İndeks Türleri

### 1. B-Tree (Balanced Tree)
- En yaygın kullanılan indeks türüdür.
- Arama, sıralama ve aralık sorguları için uygundur.
- Varsayılan olarak çoğu veritabanında kullanılır (ör. MySQL InnoDB).

### 2. Hash İndeks
- Eşitlik karşılaştırmaları (=) için hızlıdır.
- Aralık sorgularında kullanılamaz.
- Belirli motorlarda kullanılır (örn. MEMORY tablosu).

### 3. Bitmap İndeks
- Düşük kardinaliteye sahip sütunlarda kullanılır.
- AND/OR gibi mantıksal işlemleri hızlıca yürütür.
- Veri ambarı uygulamalarında tercih edilir.

### 4. Full-Text İndeks
- Metin sütunlarında hızlı arama sağlar.
- Uzun metinler için optimize edilmiştir.

### 5. Composite (Bileşik) İndeks
- Birden fazla sütunu kapsar.
- Filtreleme ve sıralama sorgularında etkilidir.
- Sütun sırası önemlidir.

### 6. Clustered / Non-Clustered İndeks
- Clustered indeks verilerin fiziksel sırasını belirler (sadece bir tane olabilir).
- Diğer indeksler non-clustered'dır.

---

## Kullanım Senaryoları

- WHERE, JOIN, ORDER BY, GROUP BY gibi sorgu ifadelerinde sık kullanılan sütunlar
- Sıralama, filtreleme ve aralık sorguları
- Birincil ve benzersiz sütunlar (PRIMARY KEY, UNIQUE)
- Büyük veri hacmine sahip tablolar
- Yüksek seçicilikli sütunlar (farklı değer sayısı fazla olan sütunlar)

---

## Avantajlar

- Sorgu performansını artırır
- Veri bütünlüğü sağlar (UNIQUE)
- Daha az disk I/O
- JOIN ve WHERE performansında artış

---

## Dezavantajlar

- Ek disk alanı kullanımı
- INSERT/UPDATE/DELETE işlemlerinde yavaşlama
- Gereksiz veya fazla indeksleme performansa zarar verir
- Bakım (yeniden oluşturma) gerekebilir

---

## SQL Örnekleri

### 1. Tek Kolon İndeks
```sql
CREATE INDEX idx_products_name ON products (name);
