-- Создание таблицы
CREATE TABLE task2 (
    name VARCHAR(50),
    score INT
);
-- Вставка данных
INSERT INTO task2 (name, score) VALUES
('иванов', 5),
('иванов', 5),
('иванов', 5),
('иванов', 2),
('иванов', 5),
('иванов', 2),
('иванов', 5),
('иванов', 5),
('петров', 5),
('петров', 5),
('петров', 2);

SELECT * 
FROM task2;

-- Запрос для нахождения студентов с более чем двумя пятерками и ровно двумя двойками
SELECT name
FROM task2
GROUP BY name
HAVING 
    SUM(CASE WHEN score = 5 THEN 1 ELSE 0 END) > 2
    AND SUM(CASE WHEN score = 2 THEN 1 ELSE 0 END) = 2;
