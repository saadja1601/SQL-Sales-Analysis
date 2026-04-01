-- 1. Total Revenue
SELECT SUM(Sales_Amount) AS Total_Revenue
FROM dataset;

-- 2. Total Quantity Sold
SELECT SUM(Quantity_Sold) AS Total_Units_Sold
FROM dataset;

-- 3. Revenue by Region
SELECT Region, SUM(Sales_Amount) AS Revenue
FROM dataset
GROUP BY Region
ORDER BY Revenue DESC;

-- 4. Top 5 Sales Representatives
SELECT Sales_Rep, SUM(Sales_Amount) AS Revenue
FROM dataset
GROUP BY Sales_Rep
ORDER BY Revenue DESC
LIMIT 5;

-- 5. Revenue by Product Category
SELECT Product_Category, SUM(Sales_Amount) AS Revenue
FROM dataset
GROUP BY Product_Category
ORDER BY Revenue DESC;

-- 6. Monthly Sales Trend
SELECT DATE_FORMAT(Sale_Date, '%Y-%m') AS Month,
       SUM(Sales_Amount) AS Revenue
FROM dataset
GROUP BY Month
ORDER BY Month;

-- 7. Customer Type Analysis
SELECT Customer_Type, SUM(Sales_Amount) AS Revenue
FROM dataset
GROUP BY Customer_Type;

-- 8. Payment Method Distribution
SELECT Payment_Method, COUNT(*) AS Transactions
FROM dataset
GROUP BY Payment_Method;

-- 9. Average Discount by Category
SELECT Product_Category, AVG(Discount) AS Avg_Discount
FROM dataset
GROUP BY Product_Category;

-- 10. Profit Estimation (VERY IMPRESSIVE 🔥)
SELECT Product_Category,
       SUM((Unit_Price - Unit_Cost) * Quantity_Sold) AS Profit
FROM dataset
GROUP BY Product_Category
ORDER BY Profit DESC;
