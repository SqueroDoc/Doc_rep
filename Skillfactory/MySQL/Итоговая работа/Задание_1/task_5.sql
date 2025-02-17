WITH installs_2022 AS (
    SELECT COUNT(*) AS count_2022
    FROM clickstream
    WHERE event = 'install' 
        AND install_channel = 'LANDING'
        AND DATE_FORMAT(datetime, '%Y-%m') = '2022-08'
),
installs_2023 AS (
    SELECT COUNT(*) AS count_2023
    FROM clickstream
    WHERE event = 'install' 
        AND install_channel = 'LANDING'
        AND DATE_FORMAT(datetime, '%Y-%m') = '2023-08'
)
SELECT 
    installs_2023.count_2023 * 1.0 / NULLIF(installs_2022.count_2022, 0) AS increase_factor
FROM installs_2022, installs_2023;
