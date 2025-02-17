SELECT 
    COUNT(*) * 1.0 / COUNT(DISTINCT DATE(datetime)) / COUNT(DISTINCT user_id) AS avg_daily_views_per_user
FROM clickstream
WHERE event = 'video_start' AND os = 'IOS';
