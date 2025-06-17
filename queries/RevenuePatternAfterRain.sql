#This query is to find out the pattern of Revenue after raining using LAG
WITH base_data AS (
  SELECT 
    Date,
    Weekday,
    revenue,
    precipitation,
    CASE WHEN precipitation > 0 THEN 1 ELSE 0 END AS is_rainy
  FROM `sneakbag2-0.Sneakbag_ID.sneakbag_2023`
),

with_lags AS (
  SELECT 
    *,
    LAG(is_rainy, 1) OVER (ORDER BY Date) AS rain_1_day_ago,
    LAG(is_rainy, 2) OVER (ORDER BY Date) AS rain_2_days_ago,
    LAG(is_rainy, 3) OVER (ORDER BY Date) AS rain_3_days_ago
  FROM base_data
),

labeled AS (
  SELECT 
    Date,
    Weekday,
    revenue,
    CASE 
      WHEN rain_1_day_ago = 1 THEN 'Day After Rain (1-day lag)'
      WHEN rain_2_days_ago = 1 THEN 'Day After Rain (2-day lag)'
      WHEN rain_3_days_ago = 1 THEN 'Day After Rain (3-day lag)'
      ELSE 'Not After Rain'
    END AS RainLagLabel
  FROM with_lags
)

SELECT 
  RainLagLabel,
  COUNT(*) AS NumDays,
  ROUND(AVG(revenue), 2) AS AvgRevenue
FROM labeled
GROUP BY RainLagLabel
ORDER BY 
  CASE 
    WHEN RainLagLabel = 'Day After Rain (1-day lag)' THEN 1
    WHEN RainLagLabel = 'Day After Rain (2-day lag)' THEN 2
    WHEN RainLagLabel = 'Day After Rain (3-day lag)' THEN 3
    ELSE 4
  END;
