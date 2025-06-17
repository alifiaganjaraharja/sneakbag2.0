#This query is to find out whether rainy days or dry days had higher Revenue, Transactions, and Customer counts for Sneakbag over the three months of June, July, and August 2023.
WITH enriched_data AS (
  SELECT 
    *,
    CASE 
      WHEN Precipitation > 0 THEN 'Rainy'
      ELSE 'Dry'
    END AS WeatherType,
    
    ROUND(total_item / NULLIF(total_transaction, 0), 2) AS ItemsPerTransaction
  FROM `sneakbag2-0.Sneakbag_ID.sneakbag_2023`
)

SELECT 
  WeatherType,
  ROUND(AVG(revenue), 2) AS AvgRevenue,
  ROUND(AVG(total_transaction), 2) AS AvgTransaction,
  ROUND(AVG(total_customer), 2) AS AvgCustomer
FROM enriched_data
GROUP BY WeatherType;