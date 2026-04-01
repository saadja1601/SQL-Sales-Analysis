-- Total Sales
SELECT SUM(sales) FROM dataset;

-- Top Customers
SELECT customer_id, SUM(sales)
FROM dataset
GROUP BY customer_id
ORDER BY SUM(sales) DESC;
