-- View data
SELECT * FROM retail_sales_cleaned LIMIT 10;

-- Total Sales
SELECT SUM(Sales) AS total_sales FROM retail_sales_cleaned;

-- Sales by Region
SELECT Region, SUM(Sales) AS total_sales
FROM retail_sales_cleaned
GROUP BY Region;

-- Sales by Category
SELECT Category, SUM(Sales) AS total_sales
FROM retail_sales_cleaned
GROUP BY Category;

-- Monthly Sales
SELECT Month, SUM(Sales) AS total_sales
FROM retail_sales_cleaned
GROUP BY Month;

-- Top Products
SELECT Product_Name, SUM(Sales) AS total_sales
FROM retail_sales_cleaned
GROUP BY Product_Name
ORDER BY total_sales DESC
LIMIT 5;
