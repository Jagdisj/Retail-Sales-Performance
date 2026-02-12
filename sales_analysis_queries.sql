-- Total Sales
SELECT SUM(Sales) AS Total_Sales FROM sales_data;

-- Total Orders
SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders FROM sales_data;

-- Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Category;

-- Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Region;

-- Sales by Segment
SELECT Segment, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Segment;

-- Top 5 Products
SELECT `Product Name`, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 5;

-- Monthly Sales Trend
SELECT DATE_FORMAT(`Order Date`, '%Y-%m') AS Month,
       SUM(Sales) AS Monthly_Sales
FROM sales_data
GROUP BY Month
ORDER BY Month;
