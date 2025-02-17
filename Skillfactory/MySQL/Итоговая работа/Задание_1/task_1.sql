SELECT 
    COUNT(DISTINCT u.user_id) * 1.0 / COUNT(DISTINCT c.user_id) AS email_share
FROM user u
JOIN clickstream c ON u.user_id = c.user_id
WHERE c.event = 'install'
    AND DATE_FORMAT(c.datetime, '%Y-%m') = '2022-06'
    AND u.registration_type = 'EMAIL';
