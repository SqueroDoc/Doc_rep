SELECT COUNT(*) - COUNT(DISTINCT CONCAT_WS('|', datetime, user_id, event, os, screen, video_id, install_channel, buy_type)) AS duplicate_count
FROM clickstream;
