-- 1) Tüm üyeleri listele
SELECT * FROM Members;

-- 2) Tüm kursları başlangıç tarihine göre sıralı şekilde listele
SELECT * FROM Courses
ORDER BY start_date ASC;

-- 3) Her kursun adını ve bağlı olduğu kategori adını listele
SELECT c.course_name, cat.category_name
FROM Courses c
JOIN Categories cat ON c.category_id = cat.category_id;

-- 4) Katılımcı üyelerin kullanıcı adını ve katıldıkları kurs adını listele
SELECT m.username, cr.course_name
FROM Enrollments e
JOIN Members m ON e.member_id = m.member_id
JOIN Courses cr ON e.course_id = cr.course_id;

-- 5) Yayın tarihi 2025'ten sonra olan blog yazılarını listele
SELECT title, publish_date
FROM BlogPosts
WHERE publish_date > '2025-01-01';

-- 6) Sertifika kodlarını ve sertifika verilen üyelerin kullanıcı adlarını listele
SELECT m.username, cert.certificate_code
FROM CertificateAssignments ca
JOIN Members m ON ca.member_id = m.member_id
JOIN Certificates cert ON ca.certificate_id = cert.certificate_id;

-- 7) Her kategoride kaç kurs olduğunu listele
SELECT cat.category_name, COUNT(c.course_id) AS course_count
FROM Categories cat
LEFT JOIN Courses c ON cat.category_id = c.category_id
GROUP BY cat.category_name;

-- 8) Katılım yapan üyelerin kullanıcı adları ve katılım tarihlerini göster
SELECT m.username, e.enrollment_date
FROM Enrollments e
JOIN Members m ON e.member_id = m.member_id
ORDER BY e.enrollment_date DESC;

-- 9) Sertifika alan üyelerin isimlerini ve aldıkları sertifika kodlarını listele
SELECT m.first_name, m.last_name, c.certificate_code
FROM CertificateAssignments ca
JOIN Members m ON ca.member_id = m.member_id
JOIN Certificates c ON ca.certificate_id = c.certificate_id;

-- 10) En çok kursa katılan üyeleri bul (katılım sayısına göre azalan sırada listele)
SELECT m.first_name, m.last_name, COUNT(e.enrollment_id) AS course_count
FROM Members m
JOIN Enrollments e ON m.member_id = e.member_id
GROUP BY m.member_id
ORDER BY course_count DESC;