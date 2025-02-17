CREATE DATABASE mydb;

USE mydb;

CREATE TABLE clickstream (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    datetime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_id INT,
    event VARCHAR(50) NOT NULL,
    os VARCHAR(50),
    screen VARCHAR(50),
    video_id INT,
    install_channel VARCHAR(50),
    buy_type VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);
INSERT INTO clickstream (user_id, event, os, screen, video_id, install_channel, buy_type) VALUES
(1, 'video_start', 'IOS', 'SEARCH', 10233, NULL, NULL),
(2, 'install', 'ANDROID', 'MAIN', NULL, 'STORE', NULL),
(2, 'buy', 'ANDROID', 'MAIN', NULL, NULL, 'TRIAL'),
(2, 'video_start', 'ANDROID', 'COLLECTION', 12412, NULL, NULL),
(4, 'install', 'IOS', 'MAIN', NULL, 'LANDING', NULL),
(2, 'buy', 'ANDROID', 'MAIN', NULL, NULL, 'PREMIUM');

UPDATE clickstream 
SET video_id = FLOOR(RAND() * 20000) + 1000
WHERE video_id IS NULL;

UPDATE clickstream 
SET install_channel = 'ORGANIC'
WHERE install_channel IS NULL;

UPDATE clickstream 
SET buy_type = 'STANDARD'
WHERE buy_type IS NULL;

select *
from clickstream



