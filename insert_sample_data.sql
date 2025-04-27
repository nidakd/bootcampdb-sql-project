-- ==============================
-- KULLANICI (Members) EKLEME
-- ==============================
INSERT INTO Members (username, email, password, first_name, last_name)
VALUES 
('ayse.kaya', 'ayse.kaya@example.com', 'Ayse2025!', 'Ayşe', 'Kaya'),
('mehmet.demir', 'mehmet.demir@example.com', 'Mehmet2025!', 'Mehmet', 'Demir'),
('elif.yilmaz', 'elif.yilmaz@example.com', 'Elif2025!', 'Elif', 'Yılmaz'),
('ahmet.arslan', 'ahmet.arslan@example.com', 'Ahmet2025!', 'Ahmet', 'Arslan'),
('fatma.dogan', 'fatma.dogan@example.com', 'Fatma2025!', 'Fatma', 'Doğan'),
('emre.turan', 'emre.turan@example.com', 'Emre2025!', 'Emre', 'Turan'),
('melis.sahin', 'melis.sahin@example.com', 'Melis2025!', 'Melis', 'Şahin'),
('burak.celik', 'burak.celik@example.com', 'Burak2025!', 'Burak', 'Çelik'),
('zeynep.aydin', 'zeynep.aydin@example.com', 'Zeynep2025!', 'Zeynep', 'Aydın'),
('omer.koc', 'omer.koc@example.com', 'Omer2025!', 'Ömer', 'Koç');

-- ==============================
-- KATEGORİLER (Categories) EKLEME
-- ==============================
INSERT INTO Categories (category_name)
VALUES 
('Yapay Zeka'),
('Blokzincir'),
('Siber Güvenlik'),
('Web Geliştirme'),
('Mobil Programlama');

-- ==============================
-- KURSLAR (Courses) EKLEME
-- ==============================
INSERT INTO Courses (course_name, description, start_date, end_date, instructor, category_id)
VALUES 
('Yapay Zeka Başlangıç', 'Yapay zeka dünyasına giriş.', '2025-05-01', '2025-06-01', 'Dr. AI Uzmanı', 1),
('Blokzincir Temelleri', 'Blokzincir teknolojisinin temelleri.', '2025-06-10', '2025-07-10', 'Blockchain Eğitmeni', 2),
('Siber Güvenlik 101', 'Siber saldırılardan korunma yolları.', '2025-07-15', '2025-08-15', 'Siber Uzmanı', 3),
('Modern Web Geliştirme', 'Güncel frontend ve backend teknolojileri.', '2025-08-20', '2025-09-20', 'Web Master', 4),
('Mobil Uygulama Geliştirme', 'Android ve iOS için uygulama geliştirme.', '2025-09-25', '2025-10-25', 'Mobil Developer', 5);

-- ==============================
-- KATILIMLAR (Enrollments) EKLEME
-- ==============================
INSERT INTO Enrollments (member_id, course_id)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 1);

-- ==============================
-- SERTİFİKALAR (Certificates) EKLEME
-- ==============================
INSERT INTO Certificates (certificate_code, issue_date)
VALUES 
('CERT-202501', '2025-06-15'),
('CERT-202502', '2025-08-20');

-- ==============================
-- SERTİFİKA ATAMALARI (CertificateAssignments) EKLEME
-- ==============================
INSERT INTO CertificateAssignments (member_id, certificate_id)
VALUES 
(1, 1),
(2, 2),
(3, 1),
(4, 2),
(5, 1),
(6, 2);

-- ==============================
-- BLOG YAZILARI (BlogPosts) EKLEME
-- ==============================
INSERT INTO BlogPosts (title, content, author_id)
VALUES 
('Yapay Zeka Üzerine Düşünceler', 'Yapay zekanın geleceği üzerine yazdım.', 1),
('Blokzincir ve Finans', 'Blokzincirin finans dünyasındaki etkisi.', 2),
('Siber Güvenlik İpuçları', 'Günlük hayatta nasıl korunuruz?', 3),
('Web Geliştirmede Yeni Trendler', 'Geleceğin web teknolojileri.', 4),
('Mobil Dünyada Başarı', 'Mobil uygulama geliştirme tavsiyeleri.', 5),
('Veri Bilimi Kariyer Başlangıcı', 'Veri bilimi yolculuğuma nasıl başladım.', 6),
('Blockchain Projeleri', 'Başarılı blockchain projeleri nasıl olur?', 7),
('Siber Tehditler ve Önlemler', 'Siber tehditlere karşı alınabilecek önlemler.', 8),
('Web 3.0 Dünyası', 'Web 3.0 kavramı nedir?', 9),
('Mobil Oyun Geliştirme', 'Mobil oyun geliştirmenin püf noktaları.', 10);