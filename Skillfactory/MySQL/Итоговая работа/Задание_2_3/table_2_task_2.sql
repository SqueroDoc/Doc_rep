SELECT name, score, COUNT(*) AS duplicate_count
FROM task2
GROUP BY name, score
HAVING COUNT(*) > 1;
