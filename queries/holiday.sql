#This query is to determine whether holidays or non-holidays generated higher Revenue, Transactions, and Customer counts for Sneakbag during the three months of June, July, and August 2023.
SELECT 
  holiday,
  ROUND(AVG(revenue),2) AS AvgRevenue,
  ROUND(AVG(total_transaction),2) AS AvgTransaction,
  ROUND(AVG(total_customer), 2) AS AvgCustomer
FROM `sneakbag2-0.Sneakbag_ID.sneakbag_2023`
GROUP BY holiday;