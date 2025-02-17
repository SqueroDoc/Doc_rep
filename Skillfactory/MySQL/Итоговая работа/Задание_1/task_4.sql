SELECT c.user_id, COUNT(*) AS video_views
FROM user u
JOIN clickstream c ON u.user_id = c.user_id
WHERE u.country = 'Armenia' 
    AND c.event = 'video_start' 
    AND c.screen = 'SEARCH'
GROUP BY c.user_id
ORDER BY video_views DESC
LIMIT 1;
