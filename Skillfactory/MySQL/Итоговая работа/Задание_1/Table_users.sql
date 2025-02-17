CREATE DATABASE mydb;

USE mydb;

CREATE TABLE user (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    created_date DATE NOT NULL,
    registration_type VARCHAR(50) NOT NULL,
    contact VARCHAR(255),
    country VARCHAR(50) NOT NULL
);
INSERT INTO user (created_date, registration_type, contact, country) VALUES
('2022-03-01', 'PHONE', '+79999999999', 'Russia'),
('2023-10-02', 'VK', 'aaaaaaa', 'Russia'),
('2022-09-04', 'EMAIL', 'aaaa@aaa.ru', 'Belarus'),
('2022-11-02', 'VK', 'bbbbbbb', 'Armenia');

SET SQL_SAFE_UPDATES = 0;

UPDATE user 
SET contact = CONCAT('+7', FLOOR(RAND() * 9000000000) + 1000000000)
WHERE contact IS NULL;

UPDATE user 
SET registration_type = 'PHONE'
WHERE registration_type IS NULL;

UPDATE user 
SET country = 'Unknown Country'
WHERE country IS NULL;
 select *
 from user