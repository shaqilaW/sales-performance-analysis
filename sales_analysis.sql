-- Total Sales Per City
SELECT city, SUM(sales) AS total_sales
FROM sales_data
GROUP BY city
ORDER BY total_sales DESC;

-- Find best-selling products
SELECT product, SUM(quantity_ordered) AS total_sold
FROM sales_data
GROUP BY product
ORDER BY total_sold DESC
LIMIT 10;

-- Monthly sales trend
SELECT month, SUM(sales) AS total_sales
FROM sales_data
GROUP BY month
ORDER BY month;

-- Peak Sales Hours
SELECT hour, SUM(sales) AS total_sales
FROM sales_data
GROUP BY hour
ORDER BY total_sales DESC;

-- Most Popular Purchase Locations
SELECT purchase_address, COUNT(*) AS total_orders
FROM sales_data
GROUP BY purchase_address
ORDER BY total_orders DESC
LIMIT 10;





