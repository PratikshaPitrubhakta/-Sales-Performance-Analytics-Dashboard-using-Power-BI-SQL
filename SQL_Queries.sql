-- Sales Analytics SQL Queries

-- Total Revenue
SELECT SUM(Sales_Amount) AS Total_Revenue FROM sales;

-- Total Orders
SELECT COUNT(DISTINCT Order_ID) AS Total_Orders FROM sales;

-- Top Customers
SELECT Customer_Name, SUM(Sales_Amount) AS Revenue
FROM sales
GROUP BY Customer_Name
ORDER BY Revenue DESC;

-- Monthly Sales
SELECT MONTH(Order_Date) AS Month, SUM(Sales_Amount) AS Revenue
FROM sales
GROUP BY MONTH(Order_Date)
ORDER BY Month;
