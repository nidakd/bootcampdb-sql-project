# 📚 Online Eğitim Platformu Veritabanı

Bu proje, bir çevrimiçi eğitim platformu için tasarlanmış bir veritabanı modelidir.  
Üyeler, kurslar, kategoriler, katılımlar, sertifikalar ve blog gönderileri gibi farklı yapılar içerir.

## 🚀 Kullanılan Teknolojiler

- PostgreSQL
- SQL
- dbdiagram.io (ERD şeması için)

## 📂 Proje Dosyaları

- `create_tables.sql` ➔ Veritabanı tablolarını oluşturur.
- `insert_sample_data.sql` ➔ Tablolara örnek veri ekler.
- `queries.sql` ➔ Veritabanı üzerinde çalıştırılacak 10 adet sorguyu içerir.
- `schema.png` ➔ Veritabanı şemasının (ERD) görsel dosyasıdır.

## ⚙️ Kurulum ve Kullanım

1. PostgreSQL veritabanı kurun ve çalıştırın.
2. Yeni bir veritabanı oluşturun (örneğin: `bootcampdb`).
3. `create_tables.sql` dosyasını çalıştırarak tabloları oluşturun.
4. `insert_sample_data.sql` dosyasını çalıştırarak örnek verileri ekleyin.
5. `queries.sql` dosyasındaki sorguları kullanarak veritabanı üzerinde sorgulama yapabilirsiniz.

## 🔎 Sorgular

Bu projede aşağıdaki örnek sorgular yer almaktadır:
- Üyeleri listeleme
- Kursları başlangıç tarihine göre sıralama
- Kurs-kategori eşlemesi
- Üye-kurs katılımları
- Sertifika atamaları
- Blog yazılarını listeleme
- Ve daha fazlası!

## 🗺️ ERD (Şema)

Veritabanı ilişkileri `schema.png` dosyasında gösterilmiştir.  
Tüm tablolar arasındaki ilişkiler şema üzerinde açıkça görülmektedir.

## 📌 Notlar

- Veriler tamamen örnektir.
- Tablolar arasında doğru Foreign Key ilişkileri bulunmaktadır.
- İlişkisel veri yapısı kuralları doğru şekilde uygulanmıştır.

## 🎓 Eğitim Bilgisi

Bu proje, SQL/PostgreSQL Bootcamp kapsamında gerçekleştirilmiştir.  
Veritabanı tasarımı, SQL sorguları, veri ilişkileri ve ERD şeması konularında uygulamalı çalışma olarak hazırlanmıştır.
---

Hazırlayan: Nida Akdoğan
