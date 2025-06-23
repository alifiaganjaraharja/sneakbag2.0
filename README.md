# Sneakbag 2.0: A deep-dive analysis of three months of revenue, combined with holiday and precipitation data.
By Alifia Ganjaraharja

## Project Overview: 
1. **Goal**: Analyze Shoe laundry & services (Sneakbag) on 3 months revenue, and find out the trend on how Holiday and precipitation (rainy day) affect the overall revenue, transactions, and customers to optimize operational efficiency. 
2. **Dataset**: The Dataset used for this project was from the previous analysis where i retrieved the daily, weekly, and monthly transaction from their daily transactions system or app named Hui manually to the Google Sheet combine with the weather data to gather the precipitation data within the Bandung area from meteostat website. The dataset provides comprehensive insights into the operation and revenue performance of Sneakbag, a Shoe laundry and services company, throughout 2023 for the first three months. The dataset contains columns such as Date, Month, Weekday, Precipitation, Holiday, Revenue, Total Customers, Total Items, and Total Transactions.
3. **Tools Used**: SQL (For data extraction & aggregation), Python (Pandas, seaborn, and Matplotlib) for analysis & Visualization.

## Hypothesis:
This analysis is an extension of my previous project with Sneakbag. I incorporated additional data, such as precipitation, to gather information about the weather, specifically rainy days. I also aimed to find out whether there is a significant correlation between rainy days and overall revenue and transactions during the three months of June, July, and August 2023. This analysis may also reveal patterns or spikes in revenue and transactions that occur after a rainy day.

| **Hypothesis**                                         | 
|--------------------------------------------------------|
| 1. Holiday VS Non-Holiday                              | 
| 2. Rainy Day Vs Dry                                    | 
| 3. Correlation between Rainy days with overall revenue |                             | 
| 4. Weekday Performance                                 | 
| 5. Pattern of revenue after rainy day                  |

## Result and Findings

1. Holiday VS. Non-Holiday

| **Holiday**             | **Average Revenue**         | **Average Transaction**        | **Average Customer**       |  
|-------------------------|-----------------------------|--------------------------------|----------------------------|
| 0                       | 325930.23                   | 5.0                            | 3.0                        |
| 1                       | 275000.0                    | 5.0                            | 3.0                        |

While there is no difference in the average transaction value and customer count between holidays and non-holidays, there is a slight difference in average revenue, with non-holidays generating more revenue. This suggests that opening the store during holidays does not significantly improve revenue, transactions, or customer count.

2. Rainy Day VS. Dry

| **WeatherType**         | **Average Revenue**         | **Average Transaction**        | **Average Customer**       |  
|-------------------------|-----------------------------|--------------------------------|----------------------------|
| Dry                     | 324696.97                   | 5.0                            | 4.0                        |
| Rainy                   | 321440.68                   | 5.0                            | 3.0                        |

From this result, although the difference in numbers is slight, it’s evident that dry days generated more revenue than rainy days. This suggests that my hypothesis about rainy days being correlated with overall revenue may not be valid. To gain a clearer understanding, I’ll present the correlation coefficient results next.

3. Correlation between Rainy days with overall revenue

| **CorrelationRainRevenue**                             | 
|--------------------------------------------------------|
| -0.0054652591939022138                                 | 

Now, it is getting more clearer from here that 
