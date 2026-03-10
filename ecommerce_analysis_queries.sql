SELECT * FROM ecommerce_analysis.`cleaned_superstore.csv`;
SELECT SUM(Sales) AS Total_Revenue
FROM `cleaned_superstore.csv`;
SELECT SUM(Profit) AS Total_Profit
FROM `cleaned_superstore.csv`;
SELECT Region, SUM(Sales) AS Total_Sales
FROM `cleaned_superstore.csv`
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT `Product Name`, SUM(Sales) AS Total_Sales
FROM `cleaned_superstore.csv`
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT Category, SUM(Profit) AS Total_Profit
FROM `cleaned_superstore.csv`
GROUP BY Category
ORDER BY Total_Profit DESC;
SELECT Year, Month, SUM(Sales) AS Monthly_Sales
FROM `cleaned_superstore.csv`
GROUP BY Year, Month
ORDER BY Year, Month;
SELECT `Customer Name`, SUM(Sales) AS Total_Sales
FROM `cleaned_superstore.csv`
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT Discount, AVG(Profit) AS Avg_Profit
FROM `cleaned_superstore.csv`
GROUP BY Discount
ORDER BY Discount;
SELECT Category, SUM(Quantity) AS Total_Quantity
FROM `cleaned_superstore.csv`
GROUP BY Category
ORDER BY Total_Quantity DESC;
SELECT `Product Name`, SUM(Profit) AS Total_Profit
FROM `cleaned_superstore.csv`
GROUP BY `Product Name`
HAVING Total_Profit < 0
ORDER BY Total_Profit;
