-- Eğer tablolar varsa, hata almamak için önce silinir
DROP TABLE IF EXISTS BlogPosts, CertificateAssignments, Certificates, Enrollments, Courses, Categories, Members CASCADE;

-- ==============================
-- ÜYELER TABLOSU
-- ==============================
CREATE TABLE Members (
    member_id SERIAL PRIMARY KEY, -- Üyenin benzersiz kimliği
    username VARCHAR(50) UNIQUE NOT NULL CHECK (username <> ''), -- Kullanıcı adı boş olamaz ve benzersiz olmalı
    email VARCHAR(100) UNIQUE NOT NULL CHECK (email LIKE '%@%'), -- Email boş olamaz ve '@' içermeli
    password VARCHAR(255) NOT NULL CHECK (password <> ''), -- Şifre boş olamaz
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL, -- Kayıt tarihi otomatik atanır
    first_name VARCHAR(50) NOT NULL, -- Ad
    last_name VARCHAR(50) NOT NULL -- Soyad
);

-- ==============================
-- KATEGORİLER TABLOSU
-- ==============================
CREATE TABLE Categories (
    category_id SERIAL PRIMARY KEY, -- Kategorinin benzersiz kimliği
    category_name VARCHAR(100) UNIQUE NOT NULL CHECK (category_name <> '') -- Kategori adı boş olamaz ve benzersiz olmalı
);

-- ==============================
-- EĞİTİMLER TABLOSU
-- Her kurs bir kategoriye bağlıdır
-- ==============================
CREATE TABLE Courses (
    course_id SERIAL PRIMARY KEY, -- Kursun benzersiz kimliği
    course_name VARCHAR(200) NOT NULL CHECK (course_name <> ''), -- Kurs adı boş olamaz
    description TEXT, -- Açıklama
    start_date DATE, -- Başlangıç tarihi
    end_date DATE, -- Bitiş tarihi
    instructor VARCHAR(100) DEFAULT 'Bilinmeyen Eğitmen', -- Eğitmen belirtilmezse varsayılan değer
    category_id INTEGER NOT NULL, -- Kursun bağlı olduğu kategori
    CONSTRAINT fk_course_category FOREIGN KEY (category_id) REFERENCES Categories(category_id) ON DELETE CASCADE -- Kategori silinirse kurslar da silinir
);

-- ==============================
-- KATILIMLAR TABLOSU
-- Üyeler ve Kurslar arasındaki ilişki
-- ==============================
CREATE TABLE Enrollments (
    enrollment_id SERIAL PRIMARY KEY, -- Katılım kaydı benzersiz kimliği
    member_id INTEGER NOT NULL, -- Katılan üyenin kimliği
    course_id INTEGER NOT NULL, -- Katıldığı kursun kimliği
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL, -- Katılım tarihi
    CONSTRAINT fk_member FOREIGN KEY(member_id) REFERENCES Members(member_id) ON DELETE CASCADE,
    CONSTRAINT fk_course FOREIGN KEY(course_id) REFERENCES Courses(course_id) ON DELETE CASCADE
);

-- ==============================
-- SERTİFİKALAR TABLOSU
-- ==============================
CREATE TABLE Certificates (
    certificate_id SERIAL PRIMARY KEY, -- Sertifikanın benzersiz kimliği
    certificate_code VARCHAR(100) UNIQUE NOT NULL CHECK (certificate_code <> ''), -- Sertifika kodu boş olamaz ve benzersiz olmalı
    issue_date DATE NOT NULL -- Veriliş tarihi
);

-- ==============================
-- SERTİFİKA ATAMALARI TABLOSU
-- Üyeler ve Sertifikalar arasındaki ilişki
-- ==============================
CREATE TABLE CertificateAssignments (
    assignment_id SERIAL PRIMARY KEY, -- Atama kaydı benzersiz kimliği
    member_id INTEGER NOT NULL,
    certificate_id INTEGER NOT NULL,
    assignment_date DATE DEFAULT CURRENT_DATE NOT NULL,
    CONSTRAINT fk_assignment_member FOREIGN KEY(member_id) REFERENCES Members(member_id) ON DELETE CASCADE,
    CONSTRAINT fk_assignment_certificate FOREIGN KEY(certificate_id) REFERENCES Certificates(certificate_id) ON DELETE CASCADE
);

-- ==============================
-- BLOG GÖNDERİLERİ TABLOSU
-- Kullanıcıların yazdığı blog yazıları
-- ==============================
CREATE TABLE BlogPosts (
    post_id SERIAL PRIMARY KEY, -- Blog yazısı benzersiz kimliği
    title VARCHAR(255) NOT NULL CHECK (title <> ''), -- Başlık boş olamaz
    content TEXT NOT NULL, -- İçerik boş olamaz
    publish_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL, -- Yayın tarihi
    author_id INTEGER NOT NULL,
    CONSTRAINT fk_author FOREIGN KEY(author_id) REFERENCES Members(member_id) ON DELETE CASCADE
);

-- ==============================
-- Performans için INDEX'ler
-- ==============================
CREATE INDEX idx_members_username ON Members(username);
CREATE INDEX idx_members_email ON Members(email);
CREATE INDEX idx_courses_course_name ON Courses(course_name);
CREATE INDEX idx_categories_category_name ON Categories(category_name);
