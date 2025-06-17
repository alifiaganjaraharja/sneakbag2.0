# This query is to find out the correlation between Rainy days to Revenue
SELECT 
  CORR(IF(precipitation > 0, 1, 0), revenue) AS CorrelationRainRevenue
FROM `sneakbag2-0.Sneakbag_ID.sneakbag_2023`;