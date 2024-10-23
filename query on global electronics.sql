use global_electronics;

---- 1.Customers count By Gender 
SELECT c.Gender, COUNT(*) as gender_count
	FROM customers c
	GROUP BY c.Gender;

---- 2.Customer count By Age Group 
SELECT c.AgeRange, COUNT(CustomerKey)
	FROM customers c
	GROUP BY c.AgeRange;

---- 3.Total Sales per Customer
SELECT c.CustomerKey, c.Name, SUM(s.Quantity * p.UnitPriceUSD) AS TotalSales
FROM sales s
JOIN customers c ON s.CustomerKey = c.CustomerKey
JOIN product p ON s.ProductKey = p.ProductKey
GROUP BY c.CustomerKey, c.Name
ORDER BY TotalSales DESC;

---- 4. Top 5 Products by Total Sales
SELECT p.ProductName, SUM(s.Quantity) AS TotalQuantity
FROM sales s
JOIN product p ON s.ProductKey = p.ProductKey
GROUP BY p.ProductName
ORDER BY TotalQuantity DESC
LIMIT 5;

----5.Customer count by State
SELECT Cust_State, COUNT(CustomerKey) AS NumberOfCustomers
FROM customers
GROUP BY Cust_State
ORDER BY NumberOfCustomers DESC;

---- 6.the Highest Sales Store
SELECT st.StoreKey, st.Country, st.State, SUM(s.Quantity * p.UnitPriceUSD) AS TotalSales
FROM store st
JOIN sales s ON st.StoreKey = s.StoreKey
JOIN product p ON s.ProductKey = p.ProductKey
GROUP BY st.StoreKey, st.Country, st.State
ORDER BY TotalSales DESC
LIMIT 1;

---- 7.Total Sales for Each Product Category
SELECT p.Category, SUM(s.Quantity * p.UnitPriceUSD) AS TotalSales
FROM sales s
JOIN product p ON s.ProductKey = p.ProductKey
GROUP BY p.Category
ORDER BY TotalSales DESC;

----8.Stores Open for More than 10 Years
SELECT StoreKey, Country, State, OpenDate, storeAge
FROM store
WHERE storeAge > 10;

----9.Average Price of Products per Brand
SELECT Brand, AVG(UnitPriceUSD) AS AvgPrice
FROM product
GROUP BY Brand
ORDER BY AvgPrice DESC;
----10.Orders with Delayed Delivery (Delivery Date > Order Date)
SELECT s.OrderNumber, 
       s.OrderDate, 
       s.DeliveryDate, 
       DATEDIFF(STR_TO_DATE(s.DeliveryDate, '%Y-%m-%d'), s.OrderDate) AS DelayDays
FROM sales s
WHERE STR_TO_DATE(s.DeliveryDate, '%Y-%m-%d') > s.OrderDate
ORDER BY DelayDays desc;

