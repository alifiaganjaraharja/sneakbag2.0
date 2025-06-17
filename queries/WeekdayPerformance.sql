#This query is to find out Weekday Performance 
SELECT 
  month,
  Weekday,
  ROUND(AVG(revenue), 2) AS AvgRevenue,
  ROUND(AVG(total_transaction), 2) AS AvgTransaction,
  ROUND(AVG(total_customer), 2) AS AvgCustomer,
  ROUND(AVG(total_item / NULLIF(total_transaction, 0)), 2) AS AvgItemsPerTransaction
FROM `sneakbag2-0.Sneakbag_ID.sneakbag_2023`
GROUP BY month, Weekday
ORDER BY month, Weekday;