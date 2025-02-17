CREATE TABLE Users (
    ID INT,
    ID_fol INT
);

INSERT INTO Users (ID, ID_fol) VALUES
(1, 2),
(1, 3),
(2, 1),
(3, 2),
(3, 1),
(4, 5),
(5, 6),
(6, 5),
(7, 8),
(8, 9),
(9, 7),
(10, 11),
(11, 10),
(12, 13),
(13, 12),
(14, 15),
(15, 14),
(16, 17); -- 16 подписан на 17, но 17 не подписан на 16

SELECT u1.ID AS follower, u1.ID_fol AS following
FROM Users u1
LEFT JOIN Users u2 ON u1.ID = u2.ID_fol AND u1.ID_fol = u2.ID
WHERE u2.ID IS NULL;