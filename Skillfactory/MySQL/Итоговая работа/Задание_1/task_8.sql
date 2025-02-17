SELECT user_id
FROM user
WHERE user_id NOT IN (SELECT DISTINCT user_id FROM clickstream WHERE event = 'install')
ORDER BY RAND()
LIMIT 10;
