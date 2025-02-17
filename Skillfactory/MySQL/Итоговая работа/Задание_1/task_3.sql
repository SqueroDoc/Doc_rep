WITH installs AS (
    SELECT DISTINCT user_id
    FROM clickstream
    WHERE event = 'install' AND DATE(datetime) = '2022-11-23'
),
trials AS (
    SELECT DISTINCT user_id
    FROM clickstream
    WHERE event = 'buy' AND buy_type = 'TRIAL'
)
SELECT 
    COUNT(DISTINCT trials.user_id) * 1.0 / COUNT(DISTINCT installs.user_id) AS conversion_rate
FROM installs
LEFT JOIN trials ON installs.user_id = trials.user_id;
