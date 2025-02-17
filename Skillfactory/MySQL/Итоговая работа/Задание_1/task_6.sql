SELECT 
    COUNT(DISTINCT user_id) * 1.0 / (SELECT COUNT(DISTINCT user_id) FROM user WHERE registration_type = 'PHONE') AS phone_share
FROM user
WHERE registration_type = 'PHONE' AND contact LIKE '+7916%';
